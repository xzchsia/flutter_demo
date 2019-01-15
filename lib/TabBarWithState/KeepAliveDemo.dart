import 'package:flutter/material.dart';

class KeepAliveDemo extends StatefulWidget {
  final title;

  KeepAliveDemo({Key key, this.title}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    return _KeepAliveDemoState(title:title);
  }
}

class _KeepAliveDemoState extends State<KeepAliveDemo>
    with AutomaticKeepAliveClientMixin {
  final title;
  int _counter = 0;


  _KeepAliveDemoState({Key key, this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('点击加一'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        /// 带有多个Button的时候，需要为heroTag设置不同的名称，否则会抛出异常
        /// https://stackoverflow.com/questions/51125024/there-are-multiple-heroes-that-share-the-same-tag-within-a-subtree
        heroTag: '$title',
        onPressed: () {
          _incrementCounter();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
}
