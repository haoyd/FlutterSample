import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(title: Text('抽屉'),),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Eric'),
              accountEmail: Text('aaa@foxmail.com'),
              currentAccountPicture: Icon(Icons.account_circle),
              otherAccountsPictures: <Widget>[
                Icon(Icons.accessibility),
                Icon(Icons.airline_seat_recline_extra),
              ],
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.lens),),
              title: Text('个性装扮'),
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.photo),),
              title: Text('我的相册'),
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.wifi),),
              title: Text('免流量特权'),
            ),
          ],
        ),
      ),
    );
  }
}
