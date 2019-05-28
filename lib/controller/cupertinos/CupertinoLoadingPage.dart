import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_sample/utils/PageUtil.dart';

class CupertinoLoadingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageUtil.setPage('加载中', Center(
      child: CupertinoActivityIndicator(
        radius: 15.0,
      ),
    ));
  }

}
