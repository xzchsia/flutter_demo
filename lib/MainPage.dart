import 'package:flutter/material.dart';
import 'package:flutter_demo/RouteEffect/home_page.dart';
import 'package:flutter_demo/BottonNavigation/BottomNavigation.dart';
import 'package:flutter_demo/BottonNavigation/BottomAppBar.dart';
import 'FrostedGlass.dart';
import 'package:flutter_demo/TabBarWithState/TabBarDemo.dart';
import 'SearchBarDemo.dart';
import 'GridViewDemo.dart';
import 'WrapDemp.dart';
import 'RefreshIndicatorDemo.dart';


class MyAppPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print('11111111111111111111');
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                print('BottomNavigation');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNavigationWidget(),
                  ),
                );
              },
              child: Text('BottomNavigation'),
            ),
            RaisedButton(
              onPressed: () {
                print('BottomAppBar');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomAppBarWidget(),
                  ),
                );
              },
              child: Text('BottomAppBar'),
            ),
            RaisedButton(
              // 点击页面跳转
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: Text('页面跳转及效果'),
            ),
            RaisedButton(
              // 点击页面跳转
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FrostedGlass(),
                  ),
                );
              },
              child: Text('毛玻璃效果'),
            ),
            RaisedButton(
              // 点击页面跳转
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TabBarDemo(),
                  ),
                );
              },
              child: Text('顶部Tab栏带有页面状态保持'),
            ),
            RaisedButton(
              // 点击页面跳转
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchBarDemo(),
                  ),
                );
              },
              child: Text('搜索工具框'),
            ),
            RaisedButton(
              // 点击页面跳转
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GridViewDemo(),
                  ),
                );
              },
              child: Text('GridView'),
            ),
            RaisedButton(
              // 点击页面跳转
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WrapDemo(),
                  ),
                );
              },
              child: Text('Wrap流式布局'),
            ),
            RaisedButton(
              // 点击页面跳转
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RefreshIndicatorDemo(),
                  ),
                );
              },
              child: Text('RefreshIndicator上拉加载，下拉刷新'),
            ),

          ],
        ),
      ),
    );
  }
}
