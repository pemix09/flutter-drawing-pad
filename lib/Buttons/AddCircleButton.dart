import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddCircleButton extends StatelessWidget{
  final Function buttonHandler;
  const AddCircleButton({super.key, required this.buttonHandler});

  @override
  Widget build(BuildContext context){
    return SizedBox.fromSize(
        size: const Size(56, 56),
        child: ClipOval(
            child: Material(
                color: Colors.amberAccent,
                child: InkWell(
                  splashColor: Colors.green,
                  onTap: (){
                    buttonHandler(1);
                  },
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(Icons.circle),
                        Text("Circle"),
                  ],
                )
            )
        )
    )
    );
  }
}

