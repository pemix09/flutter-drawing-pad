import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddCircleButton extends StatelessWidget{
  const AddCircleButton({super.key});

  @override
  Widget build(BuildContext context){
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

