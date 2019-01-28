import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final _title;

  HomeScreen(this._title);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(_title),),
      body: Center(
        child: Text(_title),
      ),
    );
  }

}