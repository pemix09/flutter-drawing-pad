import 'package:flutter/material.dart';
import 'package:hello_world/Buttons/AddCircleButton.dart';

class ToolService {
  Type selectedButton = AddCircleButton;
  Paint paint = Paint()
    ..style = PaintingStyle.stroke
    ..color = Colors.brown
    ..strokeWidth = 4.0;

  //default tool
  ToolService() {}

  void ChangleSelectedButton(Type newSelectedButton) {
    selectedButton = newSelectedButton;
  }
}
