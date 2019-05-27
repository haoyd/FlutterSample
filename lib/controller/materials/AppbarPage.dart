import 'package:flutter/material.dart';
import 'package:flutter_sample/view/widget/ToastUtil.dart';

class AppbarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }
        ),
        title: Text('导航栏'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: '搜索',
            onPressed: () {
              ToastUtil.show('搜索');
            },
          ),
          IconButton(
            icon: Icon(Icons.add),
            tooltip: '添加',
            onPressed: () {
              ToastUtil.show('添加');
            },
          ),
        ],

      ),
      body: Center(
        child: Text('AppBar设置'),
      ),
    );
  }
}
