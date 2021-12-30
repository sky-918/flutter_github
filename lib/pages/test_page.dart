import 'package:flutter/material.dart';
import 'package:flutter_github/widget/divider_line.dart';

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
      body:
      // MyStatelessWidget(),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("测试页面"),
          DividerLine(height: 0.5,),

          DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  top: Divider.createBorderSide(context),
                  bottom: Divider.createBorderSide(context),
                  left: Divider.createBorderSide(context),
                  right: Divider.createBorderSide(context),
                ),
              ),
              child: Text("sdsdds")
          ),

        ],
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurpleAccent,
              ),
            ),
          ),
          const VerticalDivider(
            width: 20,
            thickness: 1,
            indent: 20,
            endIndent: 0,
            color: Colors.grey,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepOrangeAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}