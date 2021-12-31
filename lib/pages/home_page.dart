import 'package:flutter/material.dart';

import '../app/application.dart';
import '../utils/log_util.dart';
import 'home/home_widget.dart';

/// @auter Created by tyy on 2021/12/27
/// desc   :app入口
/// version:
///

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //屏幕适配初始化
    Application.onScreenInit(context);
    LogUtils.init(tag: "Github");
    return const HomePageWidget();
  }
}
