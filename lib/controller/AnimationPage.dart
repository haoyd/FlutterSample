import 'package:flutter/material.dart';
import 'package:flutter_sample/utils/PageUtil.dart';

class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() {
    return _AnimationPageState();
  }
}

class _AnimationPageState extends State<AnimationPage> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var box = Container(
      width: 50.0,
      height: 50.0,
      color: Colors.lightBlue,
    );
    return PageUtil.setPage(
        '动画',
        new Center(
          child: Column(
            children: <Widget>[
              AnimatedOpacity(
                opacity: _visible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 3000),
                child: box,
              ),
              RaisedButton(
                child: Text('执行动画'),
                onPressed: _startAnimation,
              )
            ],
          )
        ));
  }

  _startAnimation() {
    setState(() {
      _visible = !_visible;
    });
  }
}
