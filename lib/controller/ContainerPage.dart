import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("容器"),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey,
              width: 1,
            ),
            borderRadius: const BorderRadius.all(const Radius.circular(8))
          ),
          child: Text(
            'Container',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }

}