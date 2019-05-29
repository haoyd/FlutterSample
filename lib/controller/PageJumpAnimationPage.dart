import 'package:flutter/material.dart';
import 'package:flutter_sample/utils/PageUtil.dart';

class PageJumpAnimationPage extends StatelessWidget {

  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _context = context;

    return PageUtil.setPage('转场动画-页面1', Center(
      child: Container(
        width: 100,
        height: 100,
        child: GestureDetector(
          child: Hero(tag: '第1张图片', child: Image.asset('assets/images/1.jpeg')),
          onTap: () {
            Navigator.push(_context, MaterialPageRoute(builder: (context) => GoalPage()));
          },
        ),
      ),
    ));
  }
}

class GoalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageUtil.setPage('转场动画-页面2', Center(
      child: Hero(tag: '第1张图片', child: Image.asset('assets/images/2.jpeg')),
    ));
  }
}

