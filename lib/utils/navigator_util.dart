import 'package:flutter/material.dart';

import '../app/application.dart';
import '../routes/routers.dart';

/// @auter Created by tyy on 2021/12/29
/// desc   : 路由导航的帮助类
/// version:v1.0.0
///
class NavigatorUtils {
  static goTestPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.test);
  }
  static goTestBlocPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.blocTest);
  }
  static goPersonCenterPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.person);
  }

  static goLoginCenterPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.login);
  }
 static goLoginWebPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.loginWeb);
  }

}
