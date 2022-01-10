import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'route_handlers.dart';

/// @auter Created by tyy on 2021/12/29
/// desc   : 配置路由的文件
/// version:v1.0.0
///
class Routers {
  static String root = '/';
  static String test = '/test';
  static String person = '/person';
  static String blocTest = '/test/blocpage';

  static configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(handlerFunc:
        (BuildContext? context, Map<String, List<String>> parameters) {
      print('未找到路径');
      return;
    });
    router.define(root, handler: rootHandler);
    router.define(test, handler: testHandler);
    router.define(person, handler: personCenterHandler);
    router.define(blocTest, handler: testBlocPageHandler);
  }
}
