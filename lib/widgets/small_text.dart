import 'package:flutter/material.dart';

class TextSmall extends StatelessWidget {
  String text;
  double size;
  Color color;

  TextSmall(
      {Key? key,
      required this.text,
      this.size = 16,
      this.color = Colors.black54})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: size, color: color, fontWeight: FontWeight.bold),
    );
  }
}
