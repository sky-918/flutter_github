import 'package:flutter/material.dart';
import 'package:flutter_github/app/application.dart';

import '/utils/navigator_util.dart';
import '../res/res_index.dart';
import '../widget/keep_alive_wrapper.dart';

/// @auter Created by tyy on 2021/12/27
/// desc   :
/// version:
///

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, this.title = AppStrings.appTitle})
      : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //屏幕适配初始化
    Application.onScreenInit(context);
    var children = <Widget>[];
    // 生成 6 个 Tab 页
    for (int i = 0; i < 6; ++i) {
      children.add(KeepAliveWrapper(
        child: Page(text: "$i"),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                NavigatorUtils.goTestPage(context);
              }),
        ],
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
