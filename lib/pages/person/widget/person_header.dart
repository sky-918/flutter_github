import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/res_index.dart';
import '../../../utils/log_util.dart';
import '../../../widget/image_text_widget.dart';

/// @auter Created by tyy on 2021/12/31
/// desc   :个人中心的顶部weiget
/// version:v1.0.0
///
class PersonHeaderWidget extends StatelessWidget {
  const PersonHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appColor,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [_personHeaderImg(context), _personHeaderInfo(context)],
        ),
        ImageTextWidget(
          title: "目前什么都没有",
          iconData: Icons.link,
          imgSize: 15.w,
          style: TextStyles.textSize10,
        ),
        Text(
          "创建时间",
          style: TextStyles.textSize10,
        )
      ]),
    );
  }

  ///用户头像
  ///
  _personHeaderImg(context) {
    return InkWell(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: ClipOval(
          child: Image.network(
            'https://file02.16sucai.com/d/file/2014/0829/b871e1addf5f8e96f3b390ece2b2da0d.jpg',
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
      ),
      onTap: () {
        LogUtils.d("点击了头像");
      },
    );
  }

  ///用户信息
  ///
  _personHeaderInfo(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.all(2.0.w),
            child: Row(
              children: [
                Text(
                  "常胜君",
                  style: TextStyles.textSize18Bold,
                ),
                Icon(Icons.notifications)
              ],
            )),
        Padding(
          padding: EdgeInsets.all(2.w),
          child: Text(
            "sky918",
            style: TextStyles.textSize12,
          ),
        ),
        Padding(
            padding: EdgeInsets.all(2.w),
            child: ImageTextWidget(
              title: "目前什么都没有",
              iconData: Icons.pets,
              imgSize: 15.w,
              style: TextStyles.textSize10,
            )),
        Padding(
            padding: EdgeInsets.all(2.w),
            child: ImageTextWidget(
              title: "目前什么都没有",
              iconData: Icons.location_on,
              imgSize: 15.w,
              style: TextStyles.textSize10,
            )),
      ],
    );
  }
}