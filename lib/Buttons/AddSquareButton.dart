import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddSquareButton extends StatelessWidget{
  const AddSquareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
        size: const Size(56, 56),
        child: ClipOval(
            child: Material(
                color: Colors.amberAccent,
                child: InkWell(
                    splashColor: Colors.green,
                    onTap: (){},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(Icons.square),
                        Text("Square"),
                      ],
                    )
                )
            )
        )
    );
  }

}