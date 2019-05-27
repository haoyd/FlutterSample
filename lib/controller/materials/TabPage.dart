import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() {
    return _TabPageState();
  }
}

class _TabPageState extends State<TabPage> {

  final List<Tab> _tabs = <Tab>[
    Tab(text: '选项卡1'),
    Tab(text: '选项卡2'),
    Tab(text: '选项卡3'),
  ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('顶部Tab切换'),
          bottom: TabBar(tabs: _tabs),
        ),
        body: TabBarView(
          children: _tabs.map((Tab tab) {
            return Center(
              child: Text(tab.text),
            );
          }).toList(),
        ),
      ),
    );
  }

}