import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'controller/ContainerPage.dart';
import 'controller/FormPage.dart';
import 'controller/GridViewPage.dart';
import 'controller/HorizontalListPage.dart';
import 'controller/HttpPage.dart';
import 'controller/IconsPage.dart';
import 'controller/ImagePage.dart';
import 'controller/ListViewPage.dart';
import 'controller/LongListPage.dart';
import 'controller/RaisedButtonPage.dart';
import 'controller/StateWidgetPage.dart';
import 'controller/TextPage.dart';
import 'controller/ThemePage.dart';
import 'controller/materials/AppbarPage.dart';
import 'controller/materials/MaterialListPage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Sample App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new SampleAppPage(),
      routes: <String, WidgetBuilder> {
        'ThemePage': (BuildContext context) => new ThemePage(),
        'StateWidgetPage': (BuildContext context) => new StateWidgetPage(),
        'HttpPage': (BuildContext context) => new HttpPage(),
        'ContainerPage': (BuildContext context) => new ContainerPage(),
        'ImagePage': (BuildContext context) => new ImagePage(),
        'TextPage': (BuildContext context) => new TextPage(),
        'IconsPage': (BuildContext context) => new IconsPage(),
        'RaisedButtonPage': (BuildContext context) => new RaisedButtonPage(),
        'ListViewPage': (BuildContext context) => new ListViewPage(),
        'HorizontalListPage': (BuildContext context) => new HorizontalListPage(),
        'LongListPage': (BuildContext context) => new LongListPage(),
        'GridViewPage': (BuildContext context) => new GridViewPage(),
        'FormPage': (BuildContext context) => new FormPage(),
        'AppbarPage': (BuildContext context) => new AppbarPage(),
        'MaterialListPage': (BuildContext context) => new MaterialListPage(),
      },
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => new _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sample App"),
      ),
      body: new ListView(
          children: _getListData()
      ),
    );
  }

  _getListData() {
    List<Widget> widgets = [];

    widgets.add(_getListItem("UrlPage", () {
      const url = 'https://www.baidu.com';
      launch(url);
    }));

    widgets.add(_getListItem("ThemePage"));
    widgets.add(_getListItem("StateWidgetPage"));
    widgets.add(_getListItem("HttpPage"));
    widgets.add(_getListItem("ContainerPage"));
    widgets.add(_getListItem("TextPage"));
    widgets.add(_getListItem("IconsPage"));
    widgets.add(_getListItem("RaisedButtonPage"));
    widgets.add(_getListItem("ListViewPage"));
    widgets.add(_getListItem("HorizontalListPage"));
    widgets.add(_getListItem("LongListPage"));
    widgets.add(_getListItem("GridViewPage"));
    widgets.add(_getListItem("FormPage"));
    widgets.add(_getListItem("AppbarPage"));
    widgets.add(_getListItem("MaterialListPage"));

    return widgets;
  }

  _getListItem([String page, GestureTapCallback tapGesture]) {
    return ListTile(
      leading: Icon(Icons.widgets),
      title: Text(page),
      onTap: tapGesture ?? () {
        if (page == null) {
          return;
        }
        Navigator.of(context).pushNamed(page);
      },
    );
  }
}
