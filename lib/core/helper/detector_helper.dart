import 'dart:isolate';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';

import 'package:food_otus/domain/entities/detector_data.dart';
import 'package:image/image.dart' as img;
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';

void detectorImage(SendPort port) async {
  ReceivePort messenger = ReceivePort();
  messenger.listen((message) async {
    if (message is IsolateData) {
      var result = DetectorHelper.processing(message);
      port.send(result);
    }
  });
  port.send(messenger.sendPort);
}

class DetectorHelper {
  Interpreter? _interpreter;
  List<String>? _labels;

  DetectorHelper();

  Future<void> loadModel() async {
    _interpreter = await Interpreter.fromAsset(
      "tflite/ssd_mobilenet.tflite",
      options: InterpreterOptions()..threads = 4,
    );

    _labels = await FileUtil.loadLabels("assets/tflite/labels.txt");
  }

  Interpreter? get interpreter => _interpreter;

  List<String>? get labels => _labels;

  static List<DetectorData> processing(IsolateData isolateData) {
    var interpreter = Interpreter.fromAddress(isolateData.interpreter);
    var outputTensors = interpreter.getOutputTensors();
    List<List<int>> outputShapes = [];
    List<TfLiteType> outputTypes = [];
    for (var tensor in outputTensors) {
      outputShapes.add(tensor.shape);
      outputTypes.add(tensor.type);
    }

    img.Image? image = img.decodeJpg(isolateData.imageData.toList());
    TensorImage inputImage = TensorImage.fromImage(image!);
    var imageProcessor = ImageProcessorBuilder()
        .add(ResizeOp(300, 300, ResizeMethod.NEAREST_NEIGHBOUR))
        .build();
    inputImage = imageProcessor.process(inputImage);

    TensorBuffer outputLocations = TensorBufferFloat(outputShapes[0]);
    TensorBuffer outputClasses = TensorBufferFloat(outputShapes[1]);
    TensorBuffer outputScores = TensorBufferFloat(outputShapes[2]);
    TensorBuffer numLocations = TensorBufferFloat(outputShapes[3]);

    List<Object> inputs = [inputImage.buffer];
    Map<int, Object> outputs = {
      0: outputLocations.buffer,
      1: outputClasses.buffer,
      2: outputScores.buffer,
      3: numLocations.buffer,
    };
    interpreter.runForMultipleInputs(inputs, outputs);
    int resultsCount = min(10, numLocations.getIntValue(0));

    int labelOffset = 1;
    List<Rect> locations = BoundingBoxUtils.convert(
      tensor: outputLocations,
      valueIndex: [1, 0, 3, 2],
      boundingBoxAxis: 2,
      boundingBoxType: BoundingBoxType.BOUNDARIES,
      coordinateType: CoordinateType.RATIO,
      height: 300,
      width: 300,
    );

    List<DetectorData> recognitions = [];

    for (int i = 0; i < resultsCount; i++) {
      var score = outputScores.getDoubleValue(i);

      var labelIndex = outputClasses.getIntValue(i) + labelOffset;
      var label = isolateData.label.elementAt(labelIndex);

      if (score > 0.5) {
        Rect transformedRect = imageProcessor.inverseTransformRect(
            locations[i], image.height, image.width);
        recognitions.add(
          DetectorData(
            rect: RectDetector(
              transformedRect.width,
              transformedRect.height,
              transformedRect.left,
              transformedRect.top,
            ),
            confidenceInClass: score,
            detectedClass: label,
          ),
        );
      }
    }

    return recognitions;
  }
}

class IsolateData {
  final int interpreter;
  final List<String> label;
  final Uint8List imageData;

  IsolateData({
    required this.interpreter,
    required this.label,
    required this.imageData,
  });
}
