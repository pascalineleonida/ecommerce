import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Texfield extends StatelessWidget {
  String ?hintText;
  Widget? Icon;
  Texfield({super.key, this.hintText,this.Icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(306))),
            hintText: hintText,
            suffixIcon: Icon
        ),
      ));

  }
}
