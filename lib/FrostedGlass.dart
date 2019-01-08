import 'package:flutter/material.dart';
import 'dart:ui';

// 磨砂玻璃效果

class FrostedGlass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FrostedGlass'),
      ),
      body: Stack(
        children: <Widget>[
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: Image.network(
                'https://car3.autoimg.cn/cardfs/product/g28/M07/DB/9A/1024x0_1_q87_autohomecar__ChcCR1tHF0mALkxNAAbnex98k2k658.jpg'),
          ),
          Center(
            child: ClipRRect( //裁切矩形
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: BackdropFilter(//背景滤镜器
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),//图片模糊过滤，横向竖向都设置5.0
                child: Opacity(//透明控件
                  opacity: 0.5,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300.0,//MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                    ),
                    child: Center(
                        child: Text(
                      '毛玻璃效果',
                      style: Theme.of(context).textTheme.display3,
                    )),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
