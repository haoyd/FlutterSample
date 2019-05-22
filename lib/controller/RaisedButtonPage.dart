import 'package:flutter/material.dart';
import 'package:flutter_sample/view/widget/ToastUtil.dart';

class RaisedButtonPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(title: Text("突起的按钮"),),
      body: Center(
        child: RaisedButton(
            onPressed: (){
              ToastUtil.show("按下按钮");
            },
            child: Text('RaisedButton组件'),
         ),
      ),
    );
  }

}