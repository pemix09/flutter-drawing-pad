import 'package:flutter/widgets.dart';
import '../Buttons/AddCircleButton.dart';

class PaintingTools extends StatefulWidget{
  const PaintingTools({super.key});

  @override
  State<StatefulWidget> createState() => _PaintingToolsState();

}

class _PaintingToolsState extends State<PaintingTools>{
  late int selectedTool;

  @override
  Widget build(BuildContext context){
    return Flexible(
      child: Row(
        textDirection: TextDirection.ltr,
          children: const <Widget>[
            AddCircleButton(),
          ]
      )
    );
  }
}