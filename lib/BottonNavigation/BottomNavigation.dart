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

  /// 切换item的颜色，选中用primaryColor，其他都是grey 
  Color _buildStyle(int index) {
    if(index == _currentIndex) {
      return _bottomNavigationColor;
    } else {
      return Colors.grey;
    }
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
              color: _buildStyle(0),
            ),
            title: Text(
              'Home',
              style: TextStyle(color: _buildStyle(0)),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _buildStyle(1),
            ),
            title: Text(
              'Email',
              style: TextStyle(color: _buildStyle(1)),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
              color: _buildStyle(2),
            ),
            title: Text(
              'Pages',
              style: TextStyle(color: _buildStyle(2)),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,
              color: _buildStyle(3),
            ),
            title: Text(
              'AirPlay',
              style: TextStyle(color: _buildStyle(3)),
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
