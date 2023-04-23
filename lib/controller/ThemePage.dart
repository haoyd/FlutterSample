import 'package:flutter/material.dart';

class ThemePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("主题设置"),
      ),
      body: new Center(
        child: new Container(
          color: Theme.of(context).accentColor,
          child: new Text(
            '带有背景颜色的文本组件',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
      floatingActionButton: new Theme(
          data: Theme.of(context).copyWith(accentColor: Colors.grey),
          child: new FloatingActionButton(
              onPressed: null,
              child: new Icon(Icons.computer),
          )
      ),
    );
  }

}