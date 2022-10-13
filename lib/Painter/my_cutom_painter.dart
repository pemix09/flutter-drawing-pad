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
    // 1
    Paint paint = AppConfig.of(context)!.toolService.paint;
    Offset position = Offset(0, 0);

    if (AppConfig.of(context)!.toolService.selectedButton == AddCircleButton) {
      canvas.drawCircle(position, 10, paint);
    } else if (AppConfig.of(context)!.toolService.selectedButton ==
        AddSquareButton) {
      canvas.drawRect(Rect.fromLTWH(20, 40, 100, 100), paint);
    }
  }

  // 4
  @override
  bool shouldRepaint(MyCustomPainter oldDelegate) {
    return false;
  }
}
