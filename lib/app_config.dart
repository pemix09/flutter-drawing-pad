import 'package:flutter/cupertino.dart';
import 'Services/tool_service.dart';

class AppConfig extends InheritedWidget {
  final ToolService toolService;

  const AppConfig(
      {Key? key, required Widget child, required ToolService this.toolService})
      : super(key: key, child: child);

  //Method below will go app the stack and will search for sonfig, and it will return it
  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  //method below can modify other elements of app to update, for example to changle selection of tool
  @override
  bool updateShouldNotify(_) => false;
}
