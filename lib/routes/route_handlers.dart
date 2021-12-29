import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../pages/home_page.dart';

/// @auter Created by tyy on 2021/12/29
/// desc   :fluro使用需要的handler
/// version:v1.0.0
///
var rootHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return HomePage();
    });
