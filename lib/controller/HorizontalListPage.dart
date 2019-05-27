import 'package:flutter/material.dart';

class HorizontalListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('横向滑动列表'),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: _getListItems(),
      ),
    );
  }

  _getListItems() {
    List<Widget> widgets = [];

    for (var i = 0; i < 50; i++) {
      widgets.add(Container(
        width: 200.0,
        height: 100.0,
        color: i % 2 == 0 ? Colors.blue : Colors.red,
        child: Center(
          child: Text('index : $i'),
        ),
      ));
    }

    return widgets;
  }
}
