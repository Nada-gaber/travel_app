import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  Color color;
  String text;
  IconData icon;
  bool isIcon;
  AppButton({
    Key? key,
    this.icon = Icons.favorite,
    required this.color,
    this.text = 'hi',
    this.isIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: isIcon == false ? Text(text) : Icon(icon),
    );
  }
}
