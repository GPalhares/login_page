import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final GestureTapCallback onPressed;
  final Color color, textColor;
  final double fontSize;

  Button({
    required this.text,
    required this.onPressed,
    this.color = Colors.orangeAccent,
    this.textColor = Colors.white,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.white30)))),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: fontSize),
      ),
    );
  }
}
