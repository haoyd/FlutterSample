import 'package:flutter/material.dart';
import 'package:flutter_sample/view/widget/ToastUtil.dart';

class IconsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(title: Text("图标"),),
      body: Center(
        child: Column(
          children: <Widget>[
            Icon(Icons.phone, color: Colors.green, size: 80.0,),
            IconButton(
              icon: Icon(Icons.volume_up, size: 48.0,),
              tooltip: '按下操作',
              onPressed: () {
                ToastUtil.show("按下");
              },
            )

          ],
        ),
      ),
    );
  }

}


