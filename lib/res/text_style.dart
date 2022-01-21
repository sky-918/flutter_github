import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'dimens.dart';

/// @auter Created by tyy on 2021/12/28
/// desc   :文本框的样式
/// version:v1.0.0
///
class TextStyles {
  ///一级标题
  static  TextStyle textSize18Bold = TextStyle(
      fontSize: AppDimens.font_18sp,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal);

  static  TextStyle textSize16 = TextStyle(
      fontSize: AppDimens.font_16sp,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal);

  static  TextStyle textSize14 = TextStyle(
      fontSize: AppDimens.font_14sp,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal);

  static  TextStyle textSize12 = TextStyle(
      fontSize: AppDimens.font_12sp,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal);

  static  TextStyle textSize10 = TextStyle(
      fontSize: AppDimens.font_10sp,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal);
}
