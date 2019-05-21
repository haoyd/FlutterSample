import 'package:flutter/material.dart';

import 'controller/ThemePage.dart';

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

    widgets.add(_getListItem("ThemePage", () {
      Navigator.of(context).pushNamed('ThemePage');
    }));

    return widgets;
  }

  _getListItem(String title, GestureTapCallback tapGesture) {
    return new GestureDetector(
      child: new Padding(
          padding: new EdgeInsets.all(20.0),
          child: new Text(title)
      ),
      onTap: tapGesture,
    );
  }
}
