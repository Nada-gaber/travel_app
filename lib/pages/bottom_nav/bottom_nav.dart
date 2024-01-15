import 'package:flutter/material.dart';
import 'package:travel_app/pages/bottom_nav/mainpage.dart';
import 'package:travel_app/pages/bottom_nav/search.dart';

class BottomNavigator extends StatefulWidget {
  BottomNavigator({Key? key}) : super(key: key);

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  List page = [
    const MainPage(),
    const Search(),
    const MainPage(),
    const Search(),
  ];
  int currentIndex = 0;
  void onTap(int indexPage) {
    setState(() {
      currentIndex = indexPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.grey.withOpacity(0.3),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'bar'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'main'),
          ]),
    );
  }
}
