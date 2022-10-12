import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/app_config.dart';

class AddCircleButton extends StatelessWidget {
  final String widgetName = 'Circle';

  const AddCircleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
        size: const Size(56, 56),
        child: ClipOval(
            child: Material(
                color: Colors.amberAccent,
                child: InkWell(
                    splashColor: Colors.green,
                    onTap: () {
                      print(widgetName + 'was clicked');
                      AppConfig.of(context)?.toolService.ChangleSelectedTool(1);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(Icons.circle),
                        Text("Circle"),
                      ],
                    )))));
  }
}
