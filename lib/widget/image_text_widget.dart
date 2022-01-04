import 'package:flutter/material.dart';

/// @auter Created by tyy on 2022/1/4
/// desc   : 图片和文字同行展示的title
/// version:v1.0.0
///
class ImageTextWidget extends StatelessWidget {
  ImageTextWidget({
    required this.title,
    required this.iconData,
    this.style,
    this.imgSize = 15,
    this.colorBg = Colors.transparent,
  });

  TextStyle? style;
  String title;
  Color colorBg;
  IconData iconData;
  double imgSize = 15;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorBg,
      child: Row(
        children: [
          Icon(
            iconData,
            size: 15,
          ),
          Text(
            title,
            style: style,
          )
        ],
      ),
    );
  }
}
