import 'package:flutter/material.dart';
import 'package:travel_app/widgets/colors.dart';
import 'package:travel_app/widgets/small_text.dart';
import 'package:travel_app/widgets/text.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  Map<String, String> images = {
    'balloning.png': 'Ballon',
    'hiking.png': 'Hike',
    'kayaking.png': 'Kayak',
    'snorkling.png': 'Snork',
  };
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 17, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Row(
                  children: [
                    const Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.black87,
                    ),
                    Expanded(child: Container()),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      width: 60,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                  ],
                ),
              ),
              TextAppStyle(text: 'Discover'),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                      labelPadding: const EdgeInsets.only(left: 10, right: 10),
                      labelColor: Colors.black87,
                      unselectedLabelColor: Colors.grey,
                      isScrollable: true,
                      indicator:
                          CircleIndictor(color: AppColors.mainColor, radius: 4),
                      tabs: const [
                        Tab(
                          text: 'Places',
                        ),
                        Tab(
                          text: 'Inspiration',
                        ),
                        Tab(
                          text: 'Emotions',
                        )
                      ]),
                ),
              ),
              SizedBox(
                height: 300,
                width: double.maxFinite,
                child: TabBarView(children: [
                  ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(top: 15, right: 10),
                        width: 175,
                        height: 290,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('img/mountain.jpeg')),
                        ),
                      );
                    },
                  ),
                  Text('good morning'),
                  Text('bye')
                ]),
              ),
              const SizedBox(
                height: 17,
              ),
              Container(
                margin: EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextAppStyle(
                      text: 'Explore more',
                      size: 23,
                    ),
                    TextSmall(text: 'see all')
                  ],
                ),
              ),
              Container(
                height: 80,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'img/${images.keys.elementAt(index)}')),
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                        ),
                        Text(images.values.elementAt(index))
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CircleIndictor extends Decoration {
  Color color;
  double radius;
  CircleIndictor({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffSet = Offset(
        configuration.size!.width / 2, configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffSet, radius, _paint);
  }
}
