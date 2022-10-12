import 'package:flutter/material.dart';
import 'package:hello_world/Services/tool_service.dart';
import 'Painter/painter.dart';
import 'ToolBars/PaintingTools.dart';
import 'app_config.dart';

void main() {
  final toolService = ToolService();

  runApp(AppConfig(
      toolService: toolService,
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
