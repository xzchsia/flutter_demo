import 'package:flutter/material.dart';
import 'package:flutter_demo/BottonNavigation/home_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationState();
  }
}

class _BottomNavigationState extends State<BottomNavigationWidget> {
  final _bottomNavigationColor = Colors.lightBlue;

  int _currentIndex = 0;
  List<Widget> listPages = List();

  @override
  void initState() {
    listPages
      ..add(HomeScreen("HomeScreen"))
      ..add(HomeScreen("EmailScreen"))
      ..add(HomeScreen("PagesScreen"))
      ..add(HomeScreen("AirPlayScreen"));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listPages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'Email',
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'Pages',
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'AirPlay',
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
        ],
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
      ),
    );
  }
}
