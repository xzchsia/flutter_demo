import 'package:flutter/material.dart';

/**
 * 上拉加载，下拉刷新功能
 *
 * RefreshIndicator可以显示下拉刷新
 * 使用ScrollController可以监听滑动事件，判断当前view所处的位置
 * 可以根据item所处的位置来处理加载更多显示效果
 *
 * 参考 http://flutter.link/2018/05/03/ListView%E4%B8%8B%E6%8B%89%E5%88%B7%E6%96%B0%E4%B8%8E%E5%8A%A0%E8%BD%BD%E6%9B%B4%E5%A4%9A/
 */
class RefreshIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RefreshIndicatorDemoState();
}

class _RefreshIndicatorDemoState extends State<RefreshIndicatorDemo> {
  bool isLoadingMore = false; //多次下拉就会造成多次加载更多的情况的判断标志位
  List<int> items = List.generate(16, (i) => i);
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      // 判断是否到底部了
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        print('LoadMore:' + items.length.toString());
        _loadMoreData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  // 加载更多
  Future _loadMoreData() async {
    if (!isLoadingMore) {
      setState(() => isLoadingMore = true);
      List<int> newElements =
          await mockHttpRequest(items.length, items.length + 1);
      setState(() {
        items.addAll(newElements);
        isLoadingMore = false;
      });
    }
  }

  Future<List<int>> mockHttpRequest(int from, int to) async {
    return Future.delayed(
        Duration(seconds: 2), () => List.generate(to - from, (i) => i + from));
  }

  //下拉刷新的回调
  Future<Null> _handleRefresh() async {
    await Future.delayed(Duration(seconds: 3), () {
      items.clear();
      items = List.generate(20, (idx) => idx);
      print('Refresh:' + items.length.toString());
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RefreshIndicator"),
      ),
      body: RefreshIndicator(
//          color: Colors.red,
//          backgroundColor: Colors.black,
          child: ListView.builder(
            itemCount: items.length + 1,
            itemBuilder: (context, index) {
              if (index == items.length) {
                //return _buildLoadText();
                return _buildProgressIndicator();
              } else {
                return ListTile(title: Text("Index$index"));
              }
            },
            controller: _scrollController,
          ),
          onRefresh: _handleRefresh),
    );
  }

  // 上拉加载的提示项目，文字型
  Widget _buildLoadText() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Text("加载中……"),
        ),
      ),
      color: Colors.white70,
    );
  }

  // 上拉加载的提示项目，旋转进度指示
  Widget _buildProgressIndicator() {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Opacity(
          opacity: isLoadingMore ? 1.0 : 0.0,
          child: new CircularProgressIndicator(),
        ),
      ),
    );
  }
}
