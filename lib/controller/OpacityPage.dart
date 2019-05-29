import 'package:flutter/material.dart';
import 'package:flutter_sample/utils/PageUtil.dart';

class OpacityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageUtil.setPage('透明度设置', Center(
      child: Column(
        children: <Widget>[
          Container (
            width: 100,
            height: 100,
            child: Image.asset('assets/images/1.jpeg'),
          ),
          Container(
            width: 100,
            height: 100,
            child: Opacity(
              opacity: 0.5,
              child: Image.asset('assets/images/1.jpeg'),
            ),
          ),
          Text('第2张图片添加了透明度处理')
        ],
      ),
    ));
  }
}
