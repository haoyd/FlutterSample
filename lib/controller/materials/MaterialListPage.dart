import 'package:flutter/material.dart';
import 'package:flutter_sample/utils/PageUtil.dart';

import 'AppbarPage.dart';

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
