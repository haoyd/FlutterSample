import 'package:flutter/material.dart';
import 'package:flutter_sample/view/widget/ToastUtil.dart';

class BottomNavigationBarPage extends StatefulWidget {
  @override
  _BottomNavigationBarPageState createState() {
    return _BottomNavigationBarPageState();
  }
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {

  int _selectedIndex = 0;
  final _widgetOptions = [
    Text('Index 0 信息'),
    Text('Index 1 通信录'),
    Text('Index 2 发现'),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold (
      appBar: AppBar(title: Text('底部导航'),),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _getBottomNaviItems(),
        currentIndex: _selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: _onItemTapeed,
      ),
    );
  }

  _getBottomNaviItems() {
    List<BottomNavigationBarItem> items = [];
    items.add(BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('信息')));
    items.add(BottomNavigationBarItem(icon: Icon(Icons.contacts), title: Text('通讯录')));
    items.add(BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text('发现')));
    return items;
  }

  void _onItemTapeed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}





