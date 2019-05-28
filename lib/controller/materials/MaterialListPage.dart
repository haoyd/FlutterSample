import 'package:flutter/material.dart';
import 'package:flutter_sample/utils/PageUtil.dart';

import 'AppbarPage.dart';
import 'BottomNavigationBarPage.dart';
import 'ButtonPage.dart';
import 'DrawerPage.dart';
import 'TabPage.dart';
import 'TabPage2.dart';

class MaterialListPage extends StatelessWidget {

  BuildContext mContext;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    mContext = context;
    return PageUtil.setPage('Android产品设计组件', ListView(
      children: _getListData(),
    ));
  }

  _getListData() {
    List<Widget> widgets = [];

    widgets.add(_getListItem("AppbarPage", AppbarPage()));
    widgets.add(_getListItem("BottomNavigationBarPage", BottomNavigationBarPage()));
    widgets.add(_getListItem("TabPage", TabPage()));
    widgets.add(_getListItem("TabPage2", TabPage2()));
    widgets.add(_getListItem("DrawerPage", DrawerPage()));
    widgets.add(_getListItem("ButtonPage", ButtonPage()));

    return widgets;
  }

  _getListItem(String page, Widget widget) {
    return ListTile(
      leading: Icon(Icons.android),
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
