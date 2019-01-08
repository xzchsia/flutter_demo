import 'package:flutter/material.dart';
import 'package:flutter_demo/RouteEffect/CustomRoute.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          'First Page',
          style: TextStyle(fontSize: 36.0),
        ),
        elevation: 0.0,
        leading: Container(),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            // 普通的页面跳转
//            Navigator.of(context)
//                .push(MaterialPageRoute(builder: (BuildContext context) {
//              return SecondPage();
//            }));

          // 自定义的带有动画特效的跳转
            Navigator.of(context).push(CustomRoute(SecondPage()));
          },
          child: Icon(
            Icons.navigate_next,
            size: 64.0,
          ),
          color: Colors.white,
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Second Page', style: TextStyle(fontSize: 36.0),),
        elevation: 0.0,
        backgroundColor: Colors.red,
        leading: Container(),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context)
                .pop();
          },
          child: Icon(
            Icons.navigate_before,
            size: 64.0,
          ),
          color: Colors.white,
        ),
      ),
    );
  }
}
