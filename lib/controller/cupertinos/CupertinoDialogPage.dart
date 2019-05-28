import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_sample/utils/PageUtil.dart';

class CupertinoDialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageUtil.setPage('Dialog', Center(
      child: Column(
        children: <Widget>[
          CupertinoAlertDialog(
            title: Text('提示'),
            content: Text('确定退出应用？'),
            actions: <Widget>[
              CupertinoDialogAction(
                onPressed: (){},
                isDefaultAction: true,
                child: Text('确定'),
              ),
              CupertinoDialogAction(
                onPressed: (){},
                child: Text('取消'),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
