import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// @auter Created by tyy on 2021/12/29
/// desc   :全局配置文件
/// version:v1.0.0
///
class Application {
  //路由管理调用的对象
  static late final FluroRouter router;

  //屏幕适配初始化
  static onScreenInit(BuildContext context) {
    //设置尺寸（填写设计中设备的屏幕尺寸）如果设计基于360dp * 690dp的屏幕
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: const Size(360, 690),
        minTextAdapt: true,
        orientation: Orientation.portrait);
    //根据屏幕宽度适配尺寸
    ScreenUtil().setWidth(360);
  }
}
