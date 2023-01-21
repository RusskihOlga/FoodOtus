import 'dart:isolate';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_otus/core/di.dart';
import 'package:food_otus/core/helper/detector_helper.dart';
import 'package:food_otus/domain/entities/detector_data.dart';
import 'package:food_otus/pages/recipes/bloc/recipe_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:path_provider/path_provider.dart';

class CameraPage extends StatefulWidget {
  final int id;

  const CameraPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> with WidgetsBindingObserver {
  CameraController? _controller;
  List<CameraDescription> _cameras = [];
  var _isCameraInitialized = false;

  @override
  void initState() {
    super.initState();
    _onNewCameraSelected();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final CameraController? cameraController = _controller;

    if (cameraController == null || !cameraController.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      cameraController.dispose();
    } else if (state == AppLifecycleState.resumed) {
      _onNewCameraSelected();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RecipeBloc, RecipeState>(
      listener: (context, state) {
        if (state is ShowPhoto) {
          Navigator.pop(context);
          context.pop();
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: !_isCameraInitialized
              ? const SizedBox()
              : _controller!.buildPreview(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _takePicture(),
          backgroundColor: const Color(0xFF165932),
          child: const Icon(Icons.camera),
        ),
      ),
    );
  }

  void _onNewCameraSelected() async {
    if (_cameras.isEmpty) {
      _cameras = await availableCameras();
    }

    var cameraDescription = _cameras[0];
    final previousCameraController = _controller;

    final CameraController cameraController = CameraController(
      cameraDescription,
      ResolutionPreset.high,
      imageFormatGroup: ImageFormatGroup.jpeg,
      enableAudio: false,
    );
    await previousCameraController?.dispose();

    if (mounted) {
      _controller = cameraController;
    }

    cameraController.addListener(() {
      if (mounted) setState(() {});
    });

    await cameraController.initialize().catchError((_) {});

    if (mounted) {
      setState(() {
        _isCameraInitialized = _controller!.value.isInitialized;
      });
    }
  }

  void _takePicture() async {
    var file = await _controller!.takePicture();

    showLoaderDialog();

    var port = ReceivePort();
    port.listen((message) async {
      if (message is SendPort) {
        var helper = appIns<DetectorHelper>();
        var bytes = await file.readAsBytes();
        var data = IsolateData(
          interpreter: helper.interpreter!.address,
          label: helper.labels!,
          imageData: bytes,
        );
        message.send(data);
      } else if (message is List<DetectorData>) {
        var path = (await getApplicationDocumentsDirectory()).path;
        var pathPhoto = "$path/${file.name}";
        file.saveTo(pathPhoto);

        if (!mounted) return;
        context.read<RecipeBloc>().add(SavePhoto(
          recipe: widget.id,
          path: pathPhoto,
          data: message,
        ));
      }
    });
    Isolate.spawn(detectorImage, port.sendPort);
  }

  void showLoaderDialog() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          // The background color
          backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                // The loading indicator
                CircularProgressIndicator(),
                SizedBox(
                  height: 15,
                ),
                // Some text
                Text('Обработка...')
              ],
            ),
          ),
        );
      },
    );
  }
}
