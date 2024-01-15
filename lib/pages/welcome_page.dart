import 'package:flutter/material.dart';
import 'package:travel_app/widgets/button.dart';
import 'package:travel_app/widgets/colors.dart';
import 'package:travel_app/widgets/small_text.dart';
import 'package:travel_app/widgets/text.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

List images = [
  'welcome-one.png',
  'welcome-two.png',
  'welcome-three.png',
];

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('img/${images[index]}'),
                    fit: BoxFit.cover),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 120, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextAppStyle(text: 'Travel'),
                        TextSmall(
                          text: 'Mountain',
                          size: 30,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 250,
                          child: TextSmall(
                              color: AppColors.textColor2,
                              text:
                                  'Mountain hike give you an incredible sense of freedom along with endurance test'),
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                        Button()
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 8),
                          width: 8,
                          height: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                              color:index == indexDots ? AppColors.mainColor: AppColors.mainColor.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(8)),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
