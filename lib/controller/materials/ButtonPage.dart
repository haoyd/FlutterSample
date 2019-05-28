import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  var _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('按钮'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('I am FlatButton'),
              color: Colors.lightBlue,
              textColor: Colors.red,
              onPressed: () {
                showSnackBar('您点击了FlatButton');
              },
            ),
            PopupMenuButton(
              child: Text('PopupMenuButton'),
              tooltip: '长按提示',
              itemBuilder: (BuildContext context) {
                return <PopupMenuItem<String>> [
                  PopupMenuItem<String>(child: Text('最新'), value: 'new',),
                  PopupMenuItem<String>(child: Text('最热'), value: 'hot',),
                ];
              },
              onSelected: (String action) {
                showSnackBar(action);
              },
              onCanceled: () {
                showSnackBar('canceled');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showSnackBar('您点击了floatingActionButton');
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void showSnackBar(String message) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(message)));
  }
}

