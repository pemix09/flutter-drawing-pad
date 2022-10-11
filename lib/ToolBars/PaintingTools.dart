import 'package:flutter/widgets.dart';
import '../Buttons/AddCircleButton.dart';
import '../Buttons/AddSquareButton.dart';
import '../Buttons/AddLineButton.dart';
import '../Buttons/ClearButton.dart';

class PaintingTools extends StatefulWidget{
  const PaintingTools({super.key});

  @override
  State<StatefulWidget> createState() => _PaintingToolsState();

}

class _PaintingToolsState extends State<PaintingTools>{
  late int selectedTool;

  void changeSelectedTool(int input) {
    selectedTool = input;
  }

  @override
  Widget build(BuildContext context){
    return Flexible(
      child: Row(
        textDirection: TextDirection.ltr,
          children: <Widget>[
            AddCircleButton(buttonHandler: changeSelectedTool),
            AddSquareButton(),
            AddLineButton(),
            ClearButton()
          ]
      )
    );
  }


}