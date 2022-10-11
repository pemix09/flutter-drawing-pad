import 'package:flutter/material.dart';
import 'Painter/painter.dart';
import 'ToolBars/PaintingTools.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Drawing Pad'),
        ),
        body: Center(
            child: Column(
            children: const <Widget>[
              PaintingTools(),
              Painter(title: 'Drawing Pad',),
            ],
          )
        ),
      )
    )
  );
}