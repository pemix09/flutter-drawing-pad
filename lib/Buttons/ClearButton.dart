import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_config.dart';

class ClearButton extends StatefulWidget{
  final Function reRenderParent;

  const ClearButton({required Function this.reRenderParent, super.key});



  @override
  State<StatefulWidget> createState() => _ClearButtonState(reRenderParent: this.reRenderParent);
}

class _ClearButtonState extends State<ClearButton>{
  final Function reRenderParent;

  _ClearButtonState({required Function this.reRenderParent});


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
                      AppConfig.of(context)?.toolService.ChangleSelectedButton(ClearButton);
                      reRenderParent(ClearButton);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(Icons.cancel),
                        Text("Clear"),
                      ],
                    )
                )
            )
        )
    );
  }

  Color _thisButtonColour(BuildContext context) {
    if (AppConfig.of(context)?.toolService.selectedButton == ClearButton) {
      return Colors.red;
    } else {
      return Colors.amberAccent;
    }
  }

}