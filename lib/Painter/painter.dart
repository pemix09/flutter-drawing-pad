import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './my_cutom_painter.dart';

class Painter extends StatelessWidget {
  const Painter({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: CustomPaint(
          painter: MyCustomPainter(context: context),
        ));
  }
}
