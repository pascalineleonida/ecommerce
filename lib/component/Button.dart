import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../LoginSuccess.dart';

class Button extends StatelessWidget {
  String ?Title;
  Color ?color;
   Button({super.key, this.Title,this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,left: 20),
      child: Container(
        height: 50,
        width: 320,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Title.toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
