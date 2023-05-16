import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback func;
  // ignore: use_key_in_widget_constructors
  const Button1(
      {required this.text,
      required this.color,
      required this.textColor,
      required this.func});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
