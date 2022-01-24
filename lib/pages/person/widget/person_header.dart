import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github/pages/person/bloc/person_bean.dart';
import 'package:flutter_github/pages/person/bloc/person_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/res_index.dart';
import '../../../utils/log_util.dart';
import '../../../utils/string_util.dart';
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
      child: BlocBuilder<PersonBloc, PersonState>(builder: (context, state) {

          return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                _personHeaderImg(context, state.personBean.avatarUrl),
                _personHeaderInfo(context, state.personBean)
              ],
            ),
            ImageTextWidget(
              title: state.personBean.blog.onDealNull(value: "目前什么都没有"),
              iconData: Icons.link,
              imgSize: 15.w,
              style: TextStyles.textSize10,
            ),
            Text(
              "${state.personBean.bio.onDealNull()}",
              style: TextStyles.textSize10,
            ),
            Text(
              "创建时间：${state.personBean.createdAt?.substring(0, 10)}",
              style: TextStyles.textSize10,
            )
          ]);


      }),
    );
  }

  ///用户头像
  ///
  _personHeaderImg(context, String? url) {
    return InkWell(
      child: Padding(
        padding: EdgeInsets.all(10.r),
        child: ClipOval(
          child: Image.network(
            url ??
                'https://file02.16sucai.com/d/file/2014/0829/b871e1addf5f8e96f3b390ece2b2da0d.jpg',
            width: 60.r,
            height:60.r,
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
  _personHeaderInfo(context, PersonBean personBean) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.all(2.0.w),
            child: Row(
              children: [
                Text(
                  personBean.login.onDealNull(),
                  style: TextStyles.textSize18Bold,
                ),
                Icon(Icons.notifications)
              ],
            )),
        Padding(
          padding: EdgeInsets.all(2.w),
          child: Text(
            personBean.name.onDealNull(),
            style: TextStyles.textSize12,
          ),
        ),
        Padding(
            padding: EdgeInsets.all(2.w),
            child: ImageTextWidget(
              title:
                  (personBean.company as String?).onDealNull(value: "目前什么都没有"),
              iconData: Icons.pets,
              imgSize: 15.w,
              style: TextStyles.textSize10,
            )),
        Padding(
            padding: EdgeInsets.all(2.w),
            child: ImageTextWidget(
              title:
                  (personBean.location as String?).onDealNull(value: "目前什么都没有"),
              iconData: Icons.location_on,
              imgSize: 15.w,
              style: TextStyles.textSize10,
            )),
      ],
    );
  }
}
