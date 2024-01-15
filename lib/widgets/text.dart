import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextAppStyle extends StatelessWidget {
  String text;
  double size;
  Color color;

  TextAppStyle(
      {Key? key,
      required this.text,
      this.size = 30,
      this.color = Colors.black87})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.bold
      ),
    );
  }
}
