import 'package:flutter/foundation.dart';

/// @auter Created by tyy on 2021/12/31
/// desc   :控制台打印输出信息
/// version:v1.0.0
///
class LogUtils {
  static String _tag = "LogUtils";
  static bool _isDebug = true;
  static int _maxLen = 256;

  ///进行tag的配置
  static void init(
      {String tag = "LogUtils", int maxLen = 256, bool isDebug = kDebugMode}) {
    _maxLen = maxLen;
    _tag = tag;
    _isDebug = isDebug;
  }

  static void d(Object? object, {String? tag}) {
    if (_isDebug) {
      _print(tag, ' d ', object);
    }
  }

  static void e(Object? object, {String? tag}) {
    if (_isDebug) {
      _print(tag, ' e ', object);
    }
  }

  static void _print(String? tag, String myTag, Object? object) {
    String conment = object?.toString() ?? "";
    tag = tag ?? _tag;
    if (conment.length <= _maxLen) {
      print("$tag  >>>  $myTag  $conment");
      return;
    }
    print(
        '$tag  >>>  $myTag — — — — — — — — — — — — — — — — star — — — — — — — — — — — — — — — —');
    while (conment.isNotEmpty) {
      if (conment.length > _maxLen) {
        print('$tag >>> $myTag| ${conment.substring(0, _maxLen)}');
        conment = conment.substring(_maxLen, conment.length);
      } else {
        print('$tag >>> $myTag| $conment');
        conment = '';
      }
    }
    print(
        '$tag >>> $myTag — — — — — — — — — — — — — — — — end — — — — — — — — — — — — — — — —');
  }
}
