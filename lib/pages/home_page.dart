import 'package:flutter/material.dart';
import 'package:flutter_github/widget/keep_alive_wrapper.dart';

/// @auter Created by tyy on 2021/12/27
/// desc   :
/// version:
///

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, this.title = "home---"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];
    // 生成 6 个 Tab 页
    for (int i = 0; i < 6; ++i) {
      children.add(KeepAliveWrapper(child: Page(text: "$i"),));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: children,
      ),
    );
  }
}

// Tab 页面
class Page extends StatefulWidget {
  const Page({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    print("build ${widget.text}");
    return Center(child: Text("${widget.text}", textScaleFactor: 5));
  }
}
