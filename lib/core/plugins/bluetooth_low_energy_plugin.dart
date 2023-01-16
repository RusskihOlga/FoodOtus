import 'dart:async';

import 'package:flutter/services.dart';

class BluetoothLowEnergyPlugin {
  final MethodChannel _messageChannel = const MethodChannel('ru.otus.ble');
  final EventChannel _eventChannel = const EventChannel('ru.otus.ble/scan');

  StreamSubscription? _subscription;

  Future<void> startScan(Function(String device) callback) async {
    _subscription = _eventChannel.receiveBroadcastStream().listen((event) {
      callback(event);
    });
    bool result = await _messageChannel.invokeMethod('startScan');
    if (!result) {
      _subscription?.cancel();
      _subscription = null;
    }
  }

  Future<void> stopScan() async {
    _subscription?.cancel();
    _subscription = null;
    await _messageChannel.invokeMethod('stopScan');
  }
}
