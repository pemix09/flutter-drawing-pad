import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Buttons/AddCircleButton.dart';
import '../Buttons/AddSquareButton.dart';
import '../Buttons/AddLineButton.dart';
import '../Buttons/ClearButton.dart';
import '../Inputs/TextInput.dart';

class PaintingTools extends StatefulWidget {
  const PaintingTools({super.key});

  @override
  State<StatefulWidget> createState() => _PaintingToolsState();
}

class _PaintingToolsState extends State<PaintingTools> {
  Type selectedButton = AddCircleButton;

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Row(textDirection: TextDirection.ltr, children: <Widget>[
          AddCircleButton(reRenderParent: SelectedToolChanged),
          AddSquareButton(reRenderParent: SelectedToolChanged),
          AddLineButton(reRenderParent: SelectedToolChanged),
          ClearButton(reRenderParent: SelectedToolChanged),
          InputText()
    ]));
  }

  SelectedToolChanged(Type selectedTool) {
    setState((){
      selectedButton = selectedTool;
    });
  }
}
