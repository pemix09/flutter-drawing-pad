import 'package:flutter/material.dart';
import 'package:hello_world/Services/tool_service.dart';
import 'Painter/painter.dart';
import 'ToolBars/PaintingTools.dart';
import 'app_config.dart';
import 'Services/canvas_service.dart';

void main() {
  final toolService = ToolService();
  final canvasService = CanvasService();

  runApp(AppConfig(
      toolService: toolService,
      canvasService: canvasService,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              title: const Text('Drawing Pad'),
            ),
            body: Center(
                child: Column(
              children: const <Widget>[
                PaintingTools(),
                Painter(
                  title: 'Drawing Pad',
                ),
              ],
            )),
          ))));
}
