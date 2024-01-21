import 'package:flutter/material.dart';
import 'package:travel_app/widgets/colors.dart';
import 'package:travel_app/widgets/small_text.dart';
import 'package:travel_app/widgets/text.dart';

class Button extends StatelessWidget {
  bool? isResponsive;
  double? width;

  Button({Key? key, this.isResponsive = false, width = 120}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width:isResponsive == true ? double.maxFinite : width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isResponsive == true
                ? TextSmall(text: 'Book Trip Now',color: Colors.white,)
                : Container(),
            Image.asset('img/button-one.png')
          ],
        ),
      ),
    );
  }
}
