import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'route_handlers.dart';

/// @auter Created by tyy on 2021/12/29
/// desc   : 配置路由的文件
/// version:v1.0.0
///
class Routes{
  static String root='/';
  static configureRoutes(FluroRouter router){
    router.notFoundHandler=Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> parameters) {
      print('未找到路径');
      return;
    });
    router.define(root, handler: rootHandler);
  }
}