import 'dart:typed_data';

import 'package:camera/camera.dart';
import 'package:flutter_tflite/flutter_tflite.dart';
import 'package:image/image.dart' as img;

class DetectorHelper {
  Future<void> init() async {
    await Tflite.loadModel(
      model: "assets/tflite/ssd_mobilenet.tflite",
      labels: "assets/tflite/labels.txt",
    );
  }

  Future<List<dynamic>?> detectorSSD(XFile data) async {
    var imageBytes = await data.readAsBytes();
    img.Image? oriImage = img.decodeJpg(imageBytes.toList());
    img.Image resizedImage = img.copyResize(oriImage!, width: 300, height: 300);
    List<dynamic>? recognitions = await Tflite.detectObjectOnBinary(
      binary: imageToByteListUint8(resizedImage, 300),
      numResultsPerClass: 1,
    );
    return recognitions;
  }

  Uint8List imageToByteListUint8(img.Image image, int inputSize) {
    var convertedBytes = Uint8List(1 * inputSize * inputSize * 3);
    var buffer = Uint8List.view(convertedBytes.buffer);
    int pixelIndex = 0;
    for (var i = 0; i < inputSize; i++) {
      for (var j = 0; j < inputSize; j++) {
        var pixel = image.getPixel(j, i);
        buffer[pixelIndex++] = img.getRed(pixel);
        buffer[pixelIndex++] = img.getGreen(pixel);
        buffer[pixelIndex++] = img.getBlue(pixel);
      }
    }
    return convertedBytes.buffer.asUint8List();
  }
}
