import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(title: Text("图片"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('加载网络图片'),
            Image.network(
              'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png',
              fit: BoxFit.fitWidth,
            ),
            Text('根据不同设备像素加载不同分辨率图片\n设备像素比为1.8的加载2.0x文件夹中图片\n2.7的加载3.0x中的图片'),
            Image.asset('assets/images/x1.png'),
          ],
        ),
      )
    );
  }

}