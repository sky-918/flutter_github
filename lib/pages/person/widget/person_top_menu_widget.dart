import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../pages/person/bloc/person_bloc.dart';
import '../../../res/res_index.dart';

/// @auter Created by tyy on 2022/1/4
/// desc   : 个人中心顶部菜单按钮
/// version:v1.0.0
///
class PersonTopMenuWidget extends StatelessWidget {
  const PersonTopMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appColor,
      child: BlocBuilder<PersonBloc, PersonState>(builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _getMenuItem(AppStrings.homeWidgetMenuRepos,state.personBean.publicRepos.toString()),
            _getMenuItem(AppStrings.homeWidgetMenuFans,state.personBean.followers.toString()),
            _getMenuItem(AppStrings.homeWidgetMenuFocus,"0"),
            _getMenuItem(AppStrings.homeWidgetMenuStart,"0"),
            _getMenuItem(AppStrings.homeWidgetMenuHonor,"0"),
          ],
        );
      }),
    );
  }

  _getMenuItem(String name, String num) {
    return Expanded(
        flex: 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text(name), Text(num)],
        ));
  }
}
