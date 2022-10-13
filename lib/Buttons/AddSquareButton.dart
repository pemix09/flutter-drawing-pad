import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../app_config.dart';

class AddSquareButton extends StatefulWidget {
  final Function reRenderParent;
  const AddSquareButton({required Function this.reRenderParent, super.key});



  @override
  State<StatefulWidget> createState() => _AddSquareButtonState(reRenderParent: this.reRenderParent);
}

class _AddSquareButtonState extends State<AddSquareButton>{
  final Function reRenderParent;

  _AddSquareButtonState({required Function this.reRenderParent});

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
                      AppConfig.of(context)?.toolService.ChangleSelectedButton(AddSquareButton);
                      reRenderParent(AddSquareButton);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(Icons.square),
                        Text("Square"),
                      ],
                    )))));
  }

  Color _thisButtonColour(BuildContext context) {
    if (AppConfig.of(context)?.toolService.selectedButton == AddSquareButton) {
      return Colors.red;
    } else {
      return Colors.amberAccent;
    }
  }

}
