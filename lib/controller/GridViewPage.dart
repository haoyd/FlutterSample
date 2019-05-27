import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('表格布局'),),
      body: GridView.count(
          primary: false,
          padding: EdgeInsets.all(20.0),
          crossAxisCount: 3,
          children: _getItems(),
      ),
    );
  }

  _getItems() {
    List<Widget> items = [];
    for (int i = 0; i < 50; i++) {
      items.add(Text('item $i'));
    }

    return items;
  }
}
