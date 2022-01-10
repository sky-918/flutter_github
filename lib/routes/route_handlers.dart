import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/person/person_page.dart';
import '../pages/test/bloc/page/bloc_page.dart';
import '../pages/test/test_page.dart';

/// @auter Created by tyy on 2021/12/29
/// desc   :fluro使用需要的handler
/// version:v1.0.0
///

//主页面
var rootHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const HomePage();
});

//测试页面
var testHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const TestPage();
});
var testBlocPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const BlocPage();
});
//个人中心
var personCenterHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const PersonCenterPage();
});
