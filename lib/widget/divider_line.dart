import 'package:flutter/material.dart';
import '../res/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// @auter Created by tyy on 2021/12/30
/// desc   :分割线
/// version:v1.0.0
///
class DividerLine extends StatelessWidget {
  final double height;
  final double marginStart;
  final double marginEnd;
  final double paddingTopAndBottom;
  final Color dividerColor;

  const DividerLine(
      {Key? key, this.height = 1, this.marginEnd = 0, this.marginStart = 0, this.paddingTopAndBottom = 5, this.dividerColor = AppColors
          .dividerColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color:dividerColor,
      height: paddingTopAndBottom * 2.h,
      thickness: height,
      indent: marginStart.w,
      endIndent: marginEnd.w,
    );
  }
}
