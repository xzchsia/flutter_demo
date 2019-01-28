import 'package:flutter/material.dart';
import 'StaticView.dart';

class BottomAppBarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationState();
  }
}

class _BottomNavigationState extends State<BottomAppBarWidget> {
  int _currentIndex = 0;
  List<Widget> listPages;

  @override
  void initState() {
    listPages = List();
    listPages..add(StaticView('Home'))..add(StaticView('Camera'));

    super.initState();
  }

    /// 切换item的颜色，选中用primaryColor，其他都是grey 
  Color _buildColorStyle(int index) {
    if(index == _currentIndex) {
      return Colors.white;
    } else {
      return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listPages[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return StaticView('New Page');
          }));
        },
        tooltip: 'tip',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                print('home');
                setState(() {
                  _currentIndex = 0;
                });
              },
              color: _buildColorStyle(0),
            ),
            IconButton(
              icon: Icon(Icons.camera_roll),
              onPressed: () {
                print('camera_roll');
                setState(() {
                  _currentIndex = 1;
                });
              },
              color: _buildColorStyle(1),
            ),
          ],
        ),
      ),
    );
  }
}
