// 1
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomPainter extends CustomPainter {
  // 2
  @override
  void paint(Canvas canvas, Size size) {
    // 1
    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.brown
      ..strokeWidth = 4.0;

    canvas.drawRect(Rect.fromLTWH(20, 40, 100, 100), paint);
  }

  // 4
  @override
  bool shouldRepaint(MyCustomPainter oldDelegate) {
    return true;
  }
}
