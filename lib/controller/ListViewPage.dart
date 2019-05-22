import 'package:flutter/material.dart';
import 'package:flutter_sample/view/widget/ToastUtil.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("ListView"),),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: _getListItems(),
      ),
    );
  }

  _getListItems() {
    List<Widget> widgets = [];

    for (var i = 0; i < 50; i++) {
      widgets.add(ListTile(
        leading: Icon(Icons.widgets),
        title: Text('item $i'),
        subtitle: Text('May I have a good time !'),
        onTap: () {
          ToastUtil.show('item $i');
        },
      ));
    }

    return widgets;
  }
}