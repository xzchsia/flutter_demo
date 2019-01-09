import 'package:flutter/material.dart';

class WrapDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WrapDemoState();
  }
}

class _WrapDemoState extends State<WrapDemo> {
  List<Widget> listWrap;

  @override
  void initState() {
    super.initState();
    listWrap = List<Widget>()..add(buildAddButton());
  } //声明一个list数组

  @override
  Widget build(BuildContext context) {
    //得到屏幕的高度和宽度，用来设置Container的宽和高
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('WrapDemo'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: width,
            height: height,
            color: Colors.grey,
            child: Wrap(
              children: listWrap,
              spacing: 26.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAddButton() {
    return GestureDetector(
      onTap: () {
        if (listWrap.length < 9) {
          setState(() {
            listWrap.insert(listWrap.length - 1, buildPhoto());
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.black54,
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  // 构建一个Widget
  Widget buildPhoto() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 80.0,
        height: 80.0,
        color: Colors.amber,
        child: Center(
          child: Text('照片'),
        ),
      ),
    );
  }
}
