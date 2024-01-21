import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  Color color;
  String text;
  IconData icon;
  bool isIcon;
  Color textColor;
  AppButton({
    Key? key,
    this.icon = Icons.favorite,
    required this.color,
    this.text = 'hi',
    this.isIcon = false,
  required  this.textColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: isIcon == false ? Center(child: Text(text, style:TextStyle(color: textColor))) : Center(child: Icon(icon)),
    );
  }
}
