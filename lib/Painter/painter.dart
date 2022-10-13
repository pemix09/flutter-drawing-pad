import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hello_world/Buttons/AddSquareButton.dart';
import '../Buttons/AddCircleButton.dart';
import '../Buttons/AddLineButton.dart';
import '../Models/Circle.dart';
import '../Models/Line.dart';
import '../Models/Square.dart';
import '../app_config.dart';
import './my_cutom_painter.dart';
import 'package:touchable/touchable.dart';

class Painter extends StatefulWidget {
  const Painter({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => _painterState();
}

class _painterState extends State<Painter>{


  @override
  Widget build(BuildContext context) {
    Offset startPos = Offset(0, 0), endPos;
    return Listener(
        onPointerDown: (details) {
          startPos = details.localPosition;
        },
        onPointerUp: (details) {
          endPos = details.localPosition;
          DrawFigures(context, startPos, endPos);
        },
        child: Container(
            width: 1000,
            height: 600,
            color: Colors.yellow,
            child: CustomPaint(
              painter: MyCustomPainter(context: context),
            )));
  }

  void DrawFigures(BuildContext context, Offset startPos, Offset endPos){
    var selectedButton = AppConfig.of(context)?.toolService.selectedButton;
    double radius = (startPos - endPos).distance;

    if(selectedButton == AddCircleButton){
      Circle circle = Circle(radius, startPos);
      AppConfig.of(context)?.canvasService.AddFigure(circle);
    }
    else if(selectedButton == AddSquareButton){
      Square square = Square(radius, startPos);
      AppConfig.of(context)?.canvasService.AddFigure(square);
    }
    else if(selectedButton == AddLineButton){
      Line line = Line(startPos, endPos);
      AppConfig.of(context)?.canvasService.AddFigure(line);
    }

    setState(() {});
  }

}