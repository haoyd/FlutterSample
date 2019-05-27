import 'package:flutter/material.dart';
import 'package:flutter_sample/view/widget/ToastUtil.dart';

class LongListPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(title: Text('长列表'),),
      body: new ListView.builder (
        itemCount: 50,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('item $index'),
            subtitle: Text('May I have a good time !'),
            onTap: () {
              ToastUtil.show('item $index');
            },
          );
        },
      )
    );
  }

}
