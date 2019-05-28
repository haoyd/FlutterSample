import 'package:flutter/material.dart';
import 'package:flutter_sample/utils/PageUtil.dart';

import 'CupertinoButtonPage.dart';
import 'CupertinoDialogPage.dart';
import 'CupertinoLoadingPage.dart';

class CupertinoListPage extends StatelessWidget {
  BuildContext mContext;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    mContext = context;
    return PageUtil.setPage('iOS 风格组件', ListView(
      children: _getListData(),
    ));
  }

  _getListData() {
    List<Widget> widgets = [];

    widgets.add(_getListItem("CupertinoLoadingPage", CupertinoLoadingPage()));
    widgets.add(_getListItem("CupertinoDialogPage", CupertinoDialogPage()));
    widgets.add(_getListItem("CupertinoButtonPage", CupertinoButtonPage()));

    return widgets;
  }

  _getListItem(String page, Widget widget) {
    return ListTile(
      leading: Icon(Icons.phone_iphone),
      title: Text(page),
      onTap: () {
        if (page == null) {
          return;
        }
        // ignore: argument_type_not_assignable
        Navigator.push(mContext, new MaterialPageRoute(builder: (context) => widget));
      },
    );
  }
}
