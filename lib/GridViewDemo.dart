import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
//   final List<String> items;
//   GridViewDemo({Key key, @required this.items}) :super(key:key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridViewDemo'),
      ),

      body: GridView.count(
        padding: const EdgeInsets.all(10.0),
        crossAxisSpacing: 2.0,
        crossAxisCount: 3,
        mainAxisSpacing: 2.0,
        //宽高比
        childAspectRatio: 1.78,

        children: <Widget>[
          new Image.network(
              'https://img2.mukewang.com/szimg/5b56952600014eb005400300.jpg'),
          new Image.network(
              'https://img1.mukewang.com/szimg/5af2a67500016b9905400300.jpg'),
          new Image.network(
              'https://img.mukewang.com/5bd8219400016e5e06000336-240-135.jpg'),
          new Image.network(
              'https://img3.mukewang.com/5be8f5a40001482306000338-240-135.jpg'),
          new Image.network(
              'https://img2.mukewang.com/5bd8157a0001a7a506000336-240-135.jpg'),
          new Image.network(
              'https://img4.mukewang.com/5afe7ffa00018fff06000338-240-135.jpg'),
          new Image.network(
              'https://img2.mukewang.com/szimg/5b56952600014eb005400300.jpg'),
          new Image.network(
              'https://img1.mukewang.com/szimg/5af2a67500016b9905400300.jpg'),
          new Image.network(
              'https://img.mukewang.com/5bd8219400016e5e06000336-240-135.jpg'),
          new Image.network(
              'https://img3.mukewang.com/5be8f5a40001482306000338-240-135.jpg'),
          new Image.network(
              'https://img2.mukewang.com/5bd8157a0001a7a506000336-240-135.jpg'),
          new Image.network(
              'https://img4.mukewang.com/5afe7ffa00018fff06000338-240-135.jpg'),
          new Image.network(
              'https://img2.mukewang.com/szimg/5b56952600014eb005400300.jpg'),
          new Image.network(
              'https://img1.mukewang.com/szimg/5af2a67500016b9905400300.jpg'),
          new Image.network(
              'https://img.mukewang.com/5bd8219400016e5e06000336-240-135.jpg'),
          new Image.network(
              'https://img3.mukewang.com/5be8f5a40001482306000338-240-135.jpg'),
          new Image.network(
              'https://img2.mukewang.com/5bd8157a0001a7a506000336-240-135.jpg'),
          new Image.network(
              'https://img4.mukewang.com/5afe7ffa00018fff06000338-240-135.jpg'),
          new Image.network(
              'https://img2.mukewang.com/szimg/5b56952600014eb005400300.jpg'),
          new Image.network(
              'https://img1.mukewang.com/szimg/5af2a67500016b9905400300.jpg'),
          new Image.network(
              'https://img.mukewang.com/5bd8219400016e5e06000336-240-135.jpg'),
          new Image.network(
              'https://img3.mukewang.com/5be8f5a40001482306000338-240-135.jpg'),
          new Image.network(
              'https://img2.mukewang.com/5bd8157a0001a7a506000336-240-135.jpg'),
          new Image.network(
              'https://img4.mukewang.com/5afe7ffa00018fff06000338-240-135.jpg'),
          new Image.network(
              'https://img2.mukewang.com/szimg/5b56952600014eb005400300.jpg'),
          new Image.network(
              'https://img1.mukewang.com/szimg/5af2a67500016b9905400300.jpg'),
          new Image.network(
              'https://img.mukewang.com/5bd8219400016e5e06000336-240-135.jpg'),
          new Image.network(
              'https://img3.mukewang.com/5be8f5a40001482306000338-240-135.jpg'),
          new Image.network(
              'https://img2.mukewang.com/5bd8157a0001a7a506000336-240-135.jpg'),
          new Image.network(
              'https://img4.mukewang.com/5afe7ffa00018fff06000338-240-135.jpg'),
          new Image.network(
              'https://img2.mukewang.com/szimg/5b56952600014eb005400300.jpg'),
          new Image.network(
              'https://img1.mukewang.com/szimg/5af2a67500016b9905400300.jpg'),
          new Image.network(
              'https://img.mukewang.com/5bd8219400016e5e06000336-240-135.jpg'),
          new Image.network(
              'https://img3.mukewang.com/5be8f5a40001482306000338-240-135.jpg'),
          new Image.network(
              'https://img2.mukewang.com/5bd8157a0001a7a506000336-240-135.jpg'),
          new Image.network(
              'https://img4.mukewang.com/5afe7ffa00018fff06000338-240-135.jpg'),
        ],
      ),

//         body: Center(
//           child: Container(
//             height: 200.0,
//             child: MyList(),
//           ),
//         ),

//         body: new ListView.builder(
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             return new ListTile(
//               title: new Text('${items[index]}'),
//             );
//           },
//         ),
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 180.0,
          color: Colors.lightBlue,
        ),
        new Container(
          width: 180.0,
          color: Colors.amber,
        ),
        new Container(
          width: 180.0,
          color: Colors.deepOrange,
        ),
        new Container(
          width: 180.0,
          color: Colors.deepPurple,
        ),
      ],
    );
  }
}
