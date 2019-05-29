import 'package:flutter/material.dart';
import 'package:flutter_sample/utils/PageUtil.dart';

class SecondJumpPage extends StatelessWidget {

  String question;

  SecondJumpPage({Key key, @required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageUtil.setPage('跳转页面',
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('接收传递值：' + question ?? ''),
              RaisedButton(
                child: Text('返回值'),
                onPressed: () {
                  Navigator.pop(context, question != null ? '西红柿' : '');
                },
              )
            ],
          ),
        )
    );
  }
}
