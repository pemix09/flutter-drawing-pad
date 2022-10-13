// 1
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/Buttons/AddCircleButton.dart';
import 'package:hello_world/Buttons/AddSquareButton.dart';
import 'package:hello_world/Models/Circle.dart';

import '../Models/Line.dart';
import '../Models/Square.dart';
import '../app_config.dart';

class MyCustomPainter extends CustomPainter {
  final BuildContext context;

  MyCustomPainter({required BuildContext this.context});

  // 2
  @override
  void paint(Canvas canvas, Size size) {
    var figures = AppConfig.of(context)?.canvasService.figures;
    Paint paint = Paint();

    figures?.forEach((figure) {
      if(figure is Circle){
        canvas.drawCircle(figure.startPos, figure.radius, paint);
      }
      else if(figure is Square){
        Size size = Size(figure.sideLength, figure.sideLength);
        Rect rect = figure.startPos & size;
        canvas.drawRect(rect, paint);
      }
      else if(figure is Line){
        canvas.drawLine(figure.startPos, figure.endPos, paint);
      }
    });

  }

  // 4
  @override
  bool shouldRepaint(MyCustomPainter oldDelegate) {
    return false;
  }
}
