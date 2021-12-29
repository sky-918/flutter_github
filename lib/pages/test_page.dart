import 'package:flutter/material.dart';

/// @auter Created by tyy on 2021/12/29
/// desc   :一个测试各种UI的页面
/// version:v1.0.0
///

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("测试页面"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text("测试页面"),
        ],
      ),
    );
  }
}
