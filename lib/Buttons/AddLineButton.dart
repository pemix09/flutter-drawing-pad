
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_config.dart';

class AddLineButton extends StatefulWidget{
  final Function reRenderParent;

  const AddLineButton({required Function this.reRenderParent, super.key});



  @override
  State<StatefulWidget> createState() => _AddLineButtonState(reRenderParent: this.reRenderParent);

}

class _AddLineButtonState extends State<AddLineButton>{
  final Function reRenderParent;

  _AddLineButtonState({required Function this.reRenderParent});

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
        size: const Size(56, 56),
        child: ClipOval(
            child: Material(
                color: _thisButtonColour(context),
                child: InkWell(
                    splashColor: Colors.green,
                    onTap: (){
                      AppConfig.of(context)?.toolService.ChangleSelectedButton(AddLineButton);
                      reRenderParent(AddLineButton);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(Icons.line_axis),
                        Text("Line"),
                      ],
                    )
                )
            )
        )
    );
  }

  Color _thisButtonColour(BuildContext context) {
    if (AppConfig.of(context)?.toolService.selectedButton == AddLineButton) {
      return Colors.red;
    } else {
      return Colors.amberAccent;
    }
  }
}