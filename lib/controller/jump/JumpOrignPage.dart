import 'package:flutter/material.dart';
import 'package:flutter_sample/view/widget/ToastUtil.dart';

import 'SecondJumpPage.dart';

class JumpOrignPage extends StatefulWidget {
  @override
  _JumpOrignPageState createState() {
    return _JumpOrignPageState();
  }
}

class _JumpOrignPageState extends State<JumpOrignPage> {
  String _result = '无返回结果';
  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _context = context;

    return Scaffold(
      appBar: AppBar(
        title: Text('页面跳转'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('页面返回结果：$_result'),
            ElevatedButton(
              child: Text('简单页面跳转'),
              onPressed: () {
                Navigator.of(_context).push(new MaterialPageRoute(builder: (context) => SecondJumpPage(question: '')));
              },
            ),
            ElevatedButton(
              child: Text('带参数跳转'),
              onPressed: () {
                _navigateToSecondPageAndWaitForResult(_context);
              },
            ),

          ],
        ),
      ),
    );
  }

  _navigateToSecondPageAndWaitForResult(BuildContext context) async {
    final result = await Navigator.of(_context).push(new MaterialPageRoute(builder: (context) => SecondJumpPage(question: '给我一个想要的商品',)));
    ToastUtil.show('$result');
  }
}
