import 'package:flutter/material.dart';

import '../app/application.dart';
import '../routes/routers.dart';

/// @auter Created by tyy on 2021/12/29
/// desc   : 路由导航的帮助类
/// version:v1.0.0
///
class NavigatorUtils {
  //返回上一页
  static goPop(BuildContext context, {String? result = ""}) {
    Application.router.pop(context, result);
  }

  static goTestPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.test);
  }

  static goTestBlocPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.blocTest);
  }

  static goPersonCenterPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.person);
  }

  //页面返回值使用返回Future进行使用
  static Future goLoginCenterPage(BuildContext context) {
    return Application.router.navigateTo(context, Routers.login);
  }

  //安全登录返回code值
  static Future goLoginWebPage(BuildContext context) {
    return Application.router.navigateTo(context, Routers.loginWeb);
  }
}
