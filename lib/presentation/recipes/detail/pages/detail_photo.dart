import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:food_otus/domain/entities/detector_data.dart';
import 'dart:math' as math;

class DetailPhoto extends StatefulWidget {
  final String file;
  final List<DetectorData> detectors;

  const DetailPhoto({
    Key? key,
    required this.file,
    required this.detectors,
  }) : super(key: key);

  @override
  State<DetailPhoto> createState() => _DetailPhotoState();
}

class _DetailPhotoState extends State<DetailPhoto> {
  List<Widget> _rect = [];

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _renderBoxes();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Фото",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Image.file(File(widget.file)),
            ..._rect,
          ],
        ),
      ),
    );
  }

  Future<void> _renderBoxes() async {
    var result = widget.detectors.map((detect) {
      var color =
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1);
      return Positioned(
        left: detect.rect.x,
        top: detect.rect.y,
        width: detect.rect.w,
        height: detect.rect.h,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            border: Border.all(
              color: color,
              width: 2,
            ),
          ),
          child: Text(
            "${detect.detectedClass} ${(detect.confidenceInClass * 100).toStringAsFixed(0)}%",
            style: TextStyle(
              background: Paint()..color = color,
              color: Colors.white,
              fontSize: 12.0,
            ),
          ),
        ),
      );
    }).toList();
    _rect = result;
    setState(() {});
  }
}
