import 'package:flutter/material.dart';
import 'package:travel_app/widgets/colors.dart';
import 'package:travel_app/widgets/container_button.dart';
import 'package:travel_app/widgets/small_text.dart';
import 'package:travel_app/widgets/text.dart';

class Details extends StatefulWidget {
  Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int gottanStar = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 20,
              right: 50,
              child: Row(
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                ],
              )),
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('img/mountain.jpeg'),
                        fit: BoxFit.cover)),
              )),
          Positioned(
              top: 250,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
                width: MediaQuery.of(context).size.width,
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextAppStyle(
                            text: 'Yasemite',
                            color: Colors.black.withOpacity(0.8),
                          ),
                          TextSmall(
                            text: '\$ 250',
                            color: AppColors.mainColor,
                            size: 23,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColors.mainColor,
                          ),
                          TextSmall(
                            text: 'USA,California',
                            color: AppColors.mainTextColor,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                color: index < gottanStar
                                    ? AppColors.starColor
                                    : AppColors.textColor2,
                              );
                            }),
                          ),
                          TextSmall(
                            text: '(4.0)',
                            color: AppColors.mainTextColor,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextAppStyle(
                        text: 'People',
                        size: 20,
                      ),
                      TextSmall(
                        text: 'Number of people in your group',
                        color: AppColors.mainTextColor,
                      ),
                       const SizedBox(
                        height: 15,
                      ),
                      Wrap(
                        children: List.generate(5, (index) {
                          return AppButton(
                            color: Colors.black,
                            text: (index + 1).toString(),
                          );
                        }),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
