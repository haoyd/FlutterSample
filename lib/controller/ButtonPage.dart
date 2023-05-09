import 'package:flutter/material.dart';
import 'package:flutter_sample/view/widget/ToastUtil.dart';

class ButtonPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(title: Text("突起的按钮"),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: (){
                ToastUtil.show("按下按钮");
              },
              child: Text('ElevatedButton组件'),
            ),
            TextButton(
              child: Text("TextButton"),
              onPressed: () {},
            ),
            OutlinedButton(
              child: Text("OutlinedButton"),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: () {},
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.send),
              label: Text("带图标的按钮"),
              onPressed: () {},
            ),
          ],
        )
      )
    );
  }

}