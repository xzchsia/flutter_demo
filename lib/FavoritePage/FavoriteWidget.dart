import 'package:flutter/material.dart';

// 星标收藏状态
class FavoriteWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteWidgetState();
  }
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount--;
        _isFavorited = false;
      } else {
        _isFavorited = true;
        _favoriteCount++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
//      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
//          padding: const EdgeInsets.all(0.0),
          child: IconButton(
              icon: (_isFavorited
                  ? Icon(
                      Icons.star,
                      color: Colors.red,
                    )
                  : Icon(Icons.star_border)),
              onPressed: _toggleFavorite),
        ),
        Text('$_favoriteCount'),

      ],
    );
  }
}
