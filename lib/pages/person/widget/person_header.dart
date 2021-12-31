import 'package:flutter/material.dart';

/// @auter Created by tyy on 2021/12/31
/// desc   :个人中心的顶部weiget
/// version:v1.0.0
///
class PersonHeaderWidget extends StatelessWidget {
  const PersonHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }

  ///用户头像
  ///
  _personHeaderImg(context) {
    return InkWell(child: Text("das"),onTap: (){

    },);
  }
}
