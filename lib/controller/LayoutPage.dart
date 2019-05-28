import 'package:flutter/material.dart';
import 'package:flutter_sample/utils/PageUtil.dart';

class LayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageUtil.setPage('页面布局', Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10.0),
          elevation: 5.0,
          child: Container(
            height: 100.0,
            color: Colors.white,
          ),
        )
      ],
    ));
  }
}
