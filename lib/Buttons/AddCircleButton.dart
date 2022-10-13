import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/app_config.dart';

class AddCircleButton extends StatefulWidget {
  final Function reRenderParent;

  const AddCircleButton({required Function this.reRenderParent, super.key});

  @override
  State<StatefulWidget> createState() => _AddCircleState(reRenderParentState: reRenderParent);
}

class _AddCircleState extends State<AddCircleButton>{
  final Function reRenderParentState;

  _AddCircleState({required Function this.reRenderParentState});

  @override
  Widget build(BuildContext context) {

    return SizedBox.fromSize(
        size: const Size(56, 56),
        child: ClipOval(
            child: Material(
                color: _thisButtonColour(context),
                child: InkWell(
                    splashColor: Colors.green,
                    onTap: () {
                      AppConfig.of(context)?.toolService.ChangleSelectedButton(AddCircleButton);
                      reRenderParentState(AddCircleButton);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(Icons.circle),
                        Text("Circle"),
                      ],
                    )))));
  }

  Color _thisButtonColour(BuildContext context) {
    if (AppConfig.of(context)?.toolService.selectedButton == AddCircleButton) {
      return Colors.red;
    } else {
      return Colors.amberAccent;
    }
  }
}
