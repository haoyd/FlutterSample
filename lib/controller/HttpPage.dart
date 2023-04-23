import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';

class HttpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Http请求示例"),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new ElevatedButton(
                onPressed: _httpRequest,
                child: new Text("Http请求网络"),
            ),
            new ElevatedButton(
                onPressed: _httpClientRequest,
                child: new Text("HttpClient请求网络"),
            ),
          ],
        ),
      ),
    );
  }

  _httpRequest() {
    var url = 'http://www.baidu.com';
//    http.get(url).then((response) {
//      print("状态码：${response.statusCode}");
//      print("正文：${response.body}");
//    });
  }

  _httpClientRequest() async {
    try {
      HttpClient httpClient = new HttpClient();
      HttpClientRequest request = await httpClient.getUrl(Uri.parse("http://www.baidu.com"));
      HttpClientResponse response = await request.close();
      var result = await response.transform(utf8.decoder).join();
      print(result);
      httpClient.close();
    }catch (e) {
      print("请求失败: $e");
    }
  }
}
