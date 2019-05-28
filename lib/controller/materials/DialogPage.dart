import 'package:flutter/material.dart';

class DialogPage extends StatelessWidget {

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
            SimpleDialog(
              title: const Text('简单对话框'),
              children: <Widget>[
                SimpleDialogOption(
                  onPressed: (){},
                  child: const Text('item 1'),
                ),
                SimpleDialogOption(
                  onPressed: (){},
                  child: const Text('item 2'),
                ),
              ],
            ),
            AlertDialog(
                title: Text('标题'),
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton (
                      onPressed: () {},
                      child: Text('确定'),
                    ),
                    RaisedButton (
                      onPressed: () {},
                      child: Text('取消'),
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }

  void showSnackBar(String message) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(message)));
  }
}
