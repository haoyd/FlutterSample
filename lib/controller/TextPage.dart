import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(title: Text("文本组件")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '红色、黑色删除线、25号',
              style: TextStyle(
                color: Colors.red,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.black,
                fontSize: 25.0
              ),
            ),
            Text(
              '虚线上划线 23 倾斜',
              style: TextStyle(
                decoration: TextDecoration.overline,
                decorationStyle: TextDecorationStyle.dashed,
                fontSize: 23.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              '23号加粗',
              style: TextStyle(
                fontSize: 23.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                letterSpacing: 6.0,
              ),
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(text: '一行', style: TextStyle(color: Colors.red)),
                  TextSpan(text: '文本', style: TextStyle(color: Colors.blue)),
                  TextSpan(text: '多种', style: TextStyle(color: Colors.green)),
                  TextSpan(text: '样式', style: TextStyle(color: Colors.yellow)),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }

}