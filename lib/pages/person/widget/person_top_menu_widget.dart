import 'package:flutter/material.dart';

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _getMenuItem(),
          _getMenuItem(),
          _getMenuItem(),
          _getMenuItem(),
          _getMenuItem(),
        ],
      ),
    );
  }

  _getMenuItem() {
    return Expanded(
        flex: 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text("title"), Text("data")],
        ));
  }
}
