import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Http请求示例"),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: _httpRequest,
          child: new Text("发起Http请求"),
        ),
      ),
    );
  }

  _httpRequest() {
    var url = 'http://www.baidu.com';
    http.get(url).then((response) {
      print("状态码：${response.statusCode}");
      print("正文：${response.body}");
    });
  }
}
