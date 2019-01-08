import 'package:flutter/material.dart';

class StaticView extends StatefulWidget {
  final String _title;
  StaticView(this._title);

  @override
  State<StatefulWidget> createState() {

    return StaticViewScreen();
  }

}

class StaticViewScreen extends State<StaticView> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(widget._title),),
      body: Center(
        child: Text(widget._title),
      ),
    );
  }

}