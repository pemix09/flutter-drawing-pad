import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './my_cutom_painter.dart';
import 'package:touchable/touchable.dart';

class Painter extends StatelessWidget {
  const Painter({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
        onTapDown: (details){
          print(details.localPosition);
        },

        onTapUp: (details){
          print(details.localPosition);
        },

      child: Container(
        width: 1000,
        height: 600,
        color: Colors.yellow,
        child: CustomPaint(
          painter: MyCustomPainter(context: context),
        )
      ));
  }

  void HandleTapDown() => print('tap donw');
}
