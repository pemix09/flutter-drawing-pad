// 1
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/Buttons/AddCircleButton.dart';
import 'package:hello_world/Buttons/AddSquareButton.dart';

import '../app_config.dart';

class MyCustomPainter extends CustomPainter {
  final BuildContext context;

  MyCustomPainter({required BuildContext this.context});

  // 2
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(
        Rect.fromCenter(center: Offset(50, 50), width: 50, height: 50),
        Paint());
  }

  // 4
  @override
  bool shouldRepaint(MyCustomPainter oldDelegate) {
    return false;
  }

  // @override
  // bool hitTest(Offset position) {
  //   // _path - is the same one we built in paint() method;
  //   return _path.contains(position);
  // }
}
