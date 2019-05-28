import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_sample/utils/PageUtil.dart';
import 'package:flutter_sample/view/widget/ToastUtil.dart';

class CupertinoButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageUtil.setPage(
        '按钮',
        Center(
          child: CupertinoButton(
            child: Text('点击按钮'),
            onPressed: () {ToastUtil.show('您点击了按钮');},
            color: Colors.lightBlue,
          ),
        ));
  }
}
