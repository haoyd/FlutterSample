import 'package:flutter/material.dart';

class TabPage2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: items.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab'),
          bottom: TabBar(
            isScrollable: true,
            tabs: items.map((ItemView item) {
              return new Tab(
                text: item.title,
                icon: new Icon(item.icon),
              );
            }).toList(),
          ),
        ),
        body: new TabBarView(children: items.map((ItemView item) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SelectedView(item: item,),
          );
        }).toList()),
      ),
    );
  }
}

class ItemView {

  final String title;
  final IconData icon;

  const ItemView({this.title, this.icon});
}

const List<ItemView> items = const <ItemView>[
  const ItemView(title: '自驾', icon: Icons.directions_car),
  const ItemView(title: '自行车', icon: Icons.directions_bike),
  const ItemView(title: '轮船', icon: Icons.directions_boat),
  const ItemView(title: '公交车', icon: Icons.directions_bus),
  const ItemView(title: '火车', icon: Icons.directions_railway),
  const ItemView(title: '步行', icon: Icons.directions_walk),
];

// 选中的视图
class SelectedView extends StatelessWidget {

  final ItemView item;
  const SelectedView({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final TextStyle textStyle = Theme.of(context).textTheme.displayMedium;

    return Card(
      color: Colors.white,
      child: Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(item.icon, size: 128.0, color: textStyle.color,),
            new Text(item.title, style: textStyle,),
          ],
        ),
      )
    );
  }
}



