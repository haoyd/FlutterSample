import 'package:flutter/material.dart';
import 'package:flutter_sample/utils/PageUtil.dart';

class LayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageUtil.setPage(
        '页面布局',
        ListView(
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(10.0),
              elevation: 5.0,
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(5.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 155.0,
                          height: 155.0,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.blueGrey, width: 5.0),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(8.0)),
                          ),
                          margin: const EdgeInsets.all(4.0),
                          child: Image.asset('assets/images/1.jpeg'),
                        ),
                        Container(
                          width: 155.0,
                          height: 155.0,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.blueGrey, width: 5.0),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(8.0)),
                          ),
                          margin: const EdgeInsets.all(4.0),
                          child: Image.asset('assets/images/2.jpeg'),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 155.0,
                          height: 155.0,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.blueGrey, width: 5.0),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(8.0)),
                          ),
                          margin: const EdgeInsets.all(4.0),
                          child: Image.asset('assets/images/3.jpeg'),
                        ),
                        Container(
                          width: 155.0,
                          height: 155.0,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.blueGrey, width: 5.0),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(8.0)),
                          ),
                          margin: const EdgeInsets.all(4.0),
                          child: Image.asset('assets/images/2.jpeg'),
                        ),
                      ],
                    ),
                    Text('1、用4个container将4张图片包起来，并添加边框装饰\n2、整体是1个列元素，每行为1个行元素')
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10.0),
              elevation: 5.0,
              child: Container(
                height: 100.0,
                color: Colors.white,
                padding: EdgeInsets.all(5.0),
                margin: EdgeInsets.all(30.0),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 70.0,
                      height: 70.0,
                      child: Image.asset('assets/images/1.jpeg'),
                    ),
                    Text('将图片和文字置于卡片中间')
                  ],
                )),
              ),
            ),
            Card(
                margin: EdgeInsets.all(10.0),
                elevation: 5.0,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 5.0),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(8.0)),
                    ),
                    child: Center(
                      child: Text('用padding元素设置子元素内边距'),
                    ),
                  ),
                )),
            Card(
                margin: EdgeInsets.all(10.0),
                elevation: 5.0,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 5.0),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(8.0)),
                    ),
                    child: Center(
                      child: Text('用padding元素设置子元素内边距'),
                    ),
                  ),
                )),
            Card(
                margin: EdgeInsets.all(10.0),
                elevation: 5.0,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  height: 150.0,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: FractionalOffset(0.0, 0.0),
                        child: Icon(Icons.directions_bike),
                      ),
                      Align(
                        alignment: FractionalOffset(1.0, 0.0),
                        child: Icon(Icons.directions_bike),
                      ),
                      Align(
                        alignment: FractionalOffset.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.directions_bike),
                            Text('1、用Stack可实现定位\n2、用Align可实现各种对齐方式'),
                          ],
                        ),
                      ),
                      Align(
                        alignment: FractionalOffset.bottomLeft,
                        child: Icon(Icons.directions_bike),
                      ),
                      Align(
                        alignment: FractionalOffset.bottomRight,
                        child: Icon(Icons.directions_bike),
                      ),
                    ],
                  ),
                )),
            Card(
                margin: EdgeInsets.all(10.0),
                elevation: 5.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(5.0),
                      height: 100,
                      color: Colors.lightBlue,
                      child: FittedBox(
                        fit: BoxFit.none,
                        child: Text('BoxFit.none'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      height: 100,
                      color: Colors.lightBlue,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Text('BoxFit.fill'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      height: 100,
                      color: Colors.lightBlue,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text('BoxFit.contain'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      height: 100,
                      color: Colors.lightBlue,
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Text('BoxFit.cover'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      height: 100,
                      color: Colors.lightBlue,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text('BoxFit.fitWidth'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      height: 100,
                      color: Colors.lightBlue,
                      child: FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Text('BoxFit.fitHeight'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      height: 100,
                      color: Colors.lightBlue,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text('BoxFit.scaleDown'),
                      ),
                    ),
                  ],
                )),
            Card(
              margin: EdgeInsets.all(10.0),
              elevation: 5.0,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset('assets/images/2.jpeg'),
                  ),
                  Positioned(
                    top: 40,
                    left: 100,
                    child: Text('用Stack + Positioned 实现定位'),
                  )
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(10.0),
              elevation: 5.0,
              child: IndexedStack(
                index: 1,
                alignment: FractionalOffset(0.2, 0.2),
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 80,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/1.jpeg'),
                      radius: 100.0,
                    ),
                  ),
                  Text('IndexedStack只显示第index个元素，本来有一个图片并没有显示出来'),
                ],
              ),
            ),
            Card(
                margin: EdgeInsets.all(10.0),
                elevation: 5.0,
                child: Container(
                  color: Colors.green,
                  width: 200.0,
                  height: 200.0,
                  padding: const EdgeInsets.all(50.0),
                  child: OverflowBox(
                    alignment: Alignment.topLeft,
                    maxWidth: 400.0,
                    maxHeight: 400.0,
                    child: Container(
                      color: Colors.blueGrey,
                      width: 360.0,
                      height: 100.0,
                      child: Text('OverflowBox 可超出父布局'),
                    ),
                  ),
                )),
            Card(
                margin: EdgeInsets.all(10.0),
                elevation: 5.0,
                child: SizedBox(
                    height: 100.0,
                    child: Container(
                      height: 200.0,
                      color: Colors.lightBlue,
                      child: Center(
                        child: Text('限定尺寸'),
                      ),
                    ))),
            Card(
                margin: EdgeInsets.all(10.0),
                elevation: 5.0,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: 100,
                  ),
                  child: Column(
                    children: <Widget>[
                      Text('ConstrainedBox：父布局最小高度为100'),
                      Container(
                        height: 30,
                        color: Colors.green,
                        child: Text('高度为：30'),
                      ),
                    ],
                  ),
                )),
            Card(
                margin: EdgeInsets.all(10.0),
                elevation: 5.0,
                child: Container(
                  child: AspectRatio(
                    aspectRatio: 3,
                    child: Container(
                      color: Colors.lightBlue,
                      child: Center(
                        child: Text('通过AspectRatio调整宽高比'),
                      ),
                    ),
                  ),
                )),
            Card(
                margin: EdgeInsets.all(10.0),
                elevation: 5.0,
                child: Container(
                  height: 150.0,
                  child: FractionallySizedBox(
                    alignment: Alignment.center,
                    widthFactor: 0.8,
                    heightFactor: 0.5,
                    child: Container(
                      color: Colors.lightBlue,
                      alignment: Alignment.center,
                      child: Text('FractionallySizedBox设置百分比布局'),
                    ),
                  ),
                )),
            Card(
                margin: EdgeInsets.all(10.0),
                elevation: 5.0,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Table(
                      columnWidths: const <int, TableColumnWidth>{
                        0: FixedColumnWidth(100.0),
                        1: FixedColumnWidth(40.0),
                        2: FixedColumnWidth(80.0),
                        3: FixedColumnWidth(80.0),
                      },
                      border: TableBorder.all(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      children: const <TableRow>[
                        TableRow(children: <Widget>[
                          Text('姓名'),
                          Text('性别'),
                          Text('年龄'),
                          Text('身高'),
                        ]),
                        TableRow(
                          children: <Widget>[
                            Text('张三'),
                            Text('男'),
                            Text('26'),
                            Text('172'),
                          ],
                        ),
                        //添加第三行数据
                        TableRow(
                          children: <Widget>[
                            Text('李四'),
                            Text('男'),
                            Text('28'),
                            Text('178'),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
            Card(
              margin: EdgeInsets.all(10.0),
              elevation: 5.0,
              child: Container(
                color: Colors.grey,
                child: Transform(
                  transform: Matrix4.rotationZ(-0.3),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    color: const Color(0xffe858c),
                    child: const Text('Transform 矩阵转换'),
                  ),
                ),
              ),
            ),
            Card(
                margin: EdgeInsets.all(10.0),
                elevation: 5.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Baseline(
                      baseline: 80.0,
                      baselineType: TextBaseline.alphabetic,
                      child: Text(
                        'Hello',
                        style: TextStyle(
                          fontSize: 40.0,
                          textBaseline: TextBaseline.alphabetic,
                        ),
                      ),
                    ),
                    Baseline(
                      baseline: 80.0,
                      baselineType: TextBaseline.alphabetic,
                      child: Text(
                        'Hello',
                        style: TextStyle(
                          fontSize: 35.0,
                          textBaseline: TextBaseline.alphabetic,
                        ),
                      ),
                    ),
                    Baseline(
                      baseline: 80.0,
                      baselineType: TextBaseline.alphabetic,
                      child: Text(
                        'Hello',
                        style: TextStyle(
                          fontSize: 20.0,
                          textBaseline: TextBaseline.alphabetic,
                        ),
                      ),
                    ),
                  ],
                )),
            Card(
              margin: EdgeInsets.all(10.0),
              elevation: 5.0,
              child: Wrap(
                spacing: 5.0,
                runSpacing: 10.0,
                children: <Widget>[
                  Chip(
                    label: Text('Hello'),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.lightBlue,
                      child: Text('A'),
                    ),
                  ),
                  Chip(
                    label: Text('Hello World'),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.lightBlue,
                      child: Text('A'),
                    ),
                  ),
                  Chip(
                    label: Text('Hello'),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.lightBlue,
                      child: Text('A'),
                    ),
                  ),
                  Chip(
                    label: Text('Hello World'),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.lightBlue,
                      child: Text('A'),
                    ),
                  ),
                  Chip(
                    label: Text('Hello'),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.lightBlue,
                      child: Text('A'),
                    ),
                  ),
                  Chip(
                    label: Text('Hello World'),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.lightBlue,
                      child: Text('A'),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ));
  }
}
