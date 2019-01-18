import 'package:flutter/material.dart';

/// 返回按键监听
/// Flutter 中 ，通过WillPopScope 嵌套，可以用于监听处理 Android 返回键的逻辑。
/// 其实 WillPopScope 并不是监听返回按键，如名字一般，是当前页面将要被pop时触发的回调。
/// 通过onWillPop回调返回的Future，判断是否响应 pop 。下方代码实现按下返回键时，弹出提示框，按下确定退出App。
class WillPopScopeDemo extends StatelessWidget {
  /// 单击提示退出
  Future<bool> _dialogExitApp(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => new AlertDialog(
              content: new Text("是否退出"),
              actions: <Widget>[
                new FlatButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: new Text("取消")),
                new FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: new Text("确定"))
              ],
            ));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        ///如果返回 return new Future.value(false); popped 就不会被处理
        ///如果返回 return new Future.value(true); popped 就会触发
        ///这里可以通过 showDialog 弹出确定框，在返回时通过 Navigator.of(context).pop(true);决定是否退出
        return _dialogExitApp(context);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('WillPopScopeDemo'),
        ),
        body: Center(child: Text('WillPopScopeDemo')),
      ),
    );
  }
}
