import 'package:flutter/cupertino.dart';
import 'package:hello_world/Services/canvas_service.dart';
import 'Services/tool_service.dart';

class AppConfig extends InheritedWidget {
  final ToolService toolService;
  final CanvasService canvasService;

  const AppConfig(
      {Key? key, required Widget child, required ToolService this.toolService, required CanvasService this.canvasService})
      : super(key: key, child: child);

  //Method below will go app the stack and will search for sonfig, and it will return it
  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  //method below can modify other elements of app to update, for example to changle selection of tool
  @override
  bool updateShouldNotify(AppConfig oldConfig) {
    return toolService.selectedButton != oldConfig.toolService.selectedButton;
  }
}
