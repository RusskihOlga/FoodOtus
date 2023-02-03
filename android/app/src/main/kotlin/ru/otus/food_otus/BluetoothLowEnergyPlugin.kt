package ru.otus.food_otus

import android.Manifest
import android.annotation.SuppressLint
import android.app.Activity
import android.bluetooth.BluetoothAdapter
import android.bluetooth.BluetoothManager
import android.bluetooth.le.ScanCallback
import android.bluetooth.le.ScanResult
import android.bluetooth.le.ScanSettings
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import android.util.Log
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.PluginRegistry

private const val ENABLE_BLUETOOTH_REQUEST_CODE = 1
private const val RUNTIME_PERMISSION_REQUEST_CODE = 2
private const val CONNECT_PERMISSION_REQUEST_CODE = 3

class BluetoothLowEnergyPlugin : FlutterPlugin, MethodChannel.MethodCallHandler,
    EventChannel.StreamHandler, ActivityAware,
    PluginRegistry.ActivityResultListener, PluginRegistry.RequestPermissionsResultListener {

    private var methodChannel: MethodChannel? = null
    private var eventChannel: EventChannel? = null
    private var eventSink: EventChannel.EventSink? = null
    private var currentResult: MethodChannel.Result? = null
    private var context: Context? = null
    private var activity: Activity? = null

    private val bluetoothAdapter: BluetoothAdapter by lazy {
        val bluetoothManager =
            context?.getSystemService(Context.BLUETOOTH_SERVICE) as BluetoothManager
        bluetoothManager.adapter
    }

    private val bleScanner by lazy {
        bluetoothAdapter.bluetoothLeScanner
    }

    private val scanSettings = ScanSettings.Builder()
        .setScanMode(ScanSettings.SCAN_MODE_LOW_LATENCY)
        .build()

    private val scanResults = mutableListOf<ScanResult>()

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        context = binding.applicationContext
        methodChannel = MethodChannel(binding.binaryMessenger, "ru.otus.ble")
        methodChannel!!.setMethodCallHandler(this)
        eventChannel = EventChannel(binding.binaryMessenger, "ru.otus.ble/scan")
        eventChannel!!.setStreamHandler(this)
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        methodChannel?.setMethodCallHandler(null)
        methodChannel = null
        eventChannel?.setStreamHandler(null)
        eventChannel = null
        context = null
        activity = null
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "startScan" -> {
                currentResult = result
                if (!bluetoothAdapter.isEnabled) {
                    promptEnableBluetooth()
                } else {
                    startScan()
                }
            }
            "stopScan" -> {
                stopScan()
                result.success(true)
            }
            else -> result.notImplemented()
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        eventSink = events
    }

    override fun onCancel(arguments: Any?) {
        eventSink = null
    }

    @SuppressLint("MissingPermission")
    private fun promptEnableBluetooth() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            if (!context!!.hasPermission(Manifest.permission.BLUETOOTH_CONNECT)) {
                activity!!.requestPermission(
                    arrayOf(Manifest.permission.BLUETOOTH_CONNECT),
                    CONNECT_PERMISSION_REQUEST_CODE
                )
                return
            }
        }
        val enableBtIntent = Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE)
        activity!!.startActivityForResult(enableBtIntent, ENABLE_BLUETOOTH_REQUEST_CODE)
    }

    @SuppressLint("MissingPermission")
    private fun startScan() {
        val isPermissions = context!!.hasRequiredRuntimePermissions()
        if (isPermissions) {
            scanResults.clear()
            bleScanner.startScan(null, scanSettings, scanCallback)
            currentResult?.success(true)
        } else {
            activity!!.requestRelevantRuntimePermissions()
        }
    }

    @SuppressLint("MissingPermission")
    private fun stopScan() {
        val isPermissions = context!!.hasRequiredRuntimePermissions()
        if (isPermissions) {
            scanResults.clear()
            bleScanner.stopScan(scanCallback)
        }
    }

    private val scanCallback = object : ScanCallback() {
        @SuppressLint("MissingPermission")
        override fun onScanResult(callbackType: Int, result: ScanResult) {
            val indexQuery = scanResults.indexOfFirst { it.device.address == result.device.address }
            if (indexQuery == -1) {
                val nameDevice = result.device.name
                val addressDevice = result.device.address
                if (nameDevice == null && addressDevice == null) return
                scanResults.add(result)
                if (nameDevice != null)
                    eventSink?.success(nameDevice)
                else
                    eventSink?.success(addressDevice)
            }
        }

        override fun onScanFailed(errorCode: Int) {

        }
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        activity = binding.activity
        binding.addRequestPermissionsResultListener(this)
        binding.addActivityResultListener(this)
    }

    override fun onDetachedFromActivityForConfigChanges() {
        activity = null
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        activity = binding.activity
        binding.addRequestPermissionsResultListener(this)
        binding.addActivityResultListener(this)
    }

    override fun onDetachedFromActivity() {
        activity = null
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?): Boolean {
        when (requestCode) {
            ENABLE_BLUETOOTH_REQUEST_CODE -> {
                if (resultCode != Activity.RESULT_OK) {
                    currentResult?.success(false)
                    currentResult = null
                } else {
                    startScan()
                }
            }
        }
        return true
    }

    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<out String>,
        grantResults: IntArray
    ): Boolean {
        when (requestCode) {
            CONNECT_PERMISSION_REQUEST_CODE -> {
                val isSuccess = grantResults[0] == PackageManager.PERMISSION_GRANTED
                if (isSuccess) {
                    if (!bluetoothAdapter.isEnabled) {
                        promptEnableBluetooth()
                    } else {
                        startScan()
                    }
                } else {
                    currentResult?.success(false)
                    currentResult = null
                }
                Log.e("Bluetooth", "CONNECT_PERMISSION_REQUEST_CODE")
            }
            RUNTIME_PERMISSION_REQUEST_CODE -> {
                var isSuccess = true
                for (r in grantResults) {
                    if (r == PackageManager.PERMISSION_DENIED) {
                        currentResult?.success(false)
                        currentResult = null
                        isSuccess = false
                        break
                    }
                }
                if (isSuccess) startScan()
            }
        }
        return true
    }

    private fun Context.hasPermission(permissionType: String): Boolean {
        return ContextCompat.checkSelfPermission(this, permissionType) ==
                PackageManager.PERMISSION_GRANTED
    }

    private fun Activity.requestPermission(permissions: Array<String>, requestCode: Int) {
        ActivityCompat.requestPermissions(this, permissions, requestCode)
    }

    private fun Context.hasRequiredRuntimePermissions(): Boolean {
        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            hasPermission(Manifest.permission.BLUETOOTH_SCAN) &&
                    hasPermission(Manifest.permission.BLUETOOTH_CONNECT)
        } else {
            hasPermission(Manifest.permission.ACCESS_FINE_LOCATION)
        }
    }

    private fun Activity.requestRelevantRuntimePermissions() {
        if (hasRequiredRuntimePermissions()) {
            return
        }
        when {
            Build.VERSION.SDK_INT < Build.VERSION_CODES.S -> {
                requestPermission(
                    arrayOf(Manifest.permission.ACCESS_FINE_LOCATION),
                    RUNTIME_PERMISSION_REQUEST_CODE
                )
            }
            Build.VERSION.SDK_INT >= Build.VERSION_CODES.S -> {
                requestPermission(
                    arrayOf(
                        Manifest.permission.BLUETOOTH_SCAN,
                        Manifest.permission.BLUETOOTH_CONNECT,
                    ),
                    RUNTIME_PERMISSION_REQUEST_CODE
                )
            }
        }
    }
}