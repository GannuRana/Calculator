import 'package:flutter/material.dart';

class Button extends StatelessWidget {
final String? text;
final int textColors;
final int fillColors;
final double? textSize;
final Function() callback;

const Button({this.text,required this.callback,required this.fillColors,required this.textColors,this.textSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 50,
      height: 50,
      color: Color(fillColors),
      child: ElevatedButton(
        onPressed: callback,
        child: Text(
          text!,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: textSize,
            color: Color(textColors),
          ),
        ),
      ),
    );
  }
}