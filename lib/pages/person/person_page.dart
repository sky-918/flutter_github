import 'package:flutter/material.dart';
import 'package:flutter_github/utils/log_util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/sliver_header_delegate.dart';
import 'widget/person_header.dart';
import 'widget/person_top_menu_widget.dart';

/// @auter Created by tyy on 2021/12/31
/// desc   :个人中心页面
/// version:v1.0.0
///

class PersonCenterPage extends StatefulWidget {
  const PersonCenterPage({Key? key}) : super(key: key);

  @override
  _PersonCenterPageState createState() => _PersonCenterPageState();
}

class _PersonCenterPageState extends State<PersonCenterPage> {
  @override
  Widget build(BuildContext context) {
    return PersistentHeaderRoute()

    ;
  }
}

class PersistentHeaderRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPersistentHeader(
          pinned: false,
          delegate: SliverHeaderDelegate(
            //有最大和最小高度
            maxHeight:120.h,
            minHeight: 120.h,
            child: PersonHeaderWidget(),
          ),
        ),
        SliverPersistentHeader(
          pinned: true,
          delegate: SliverHeaderDelegate(
            //有最大和最小高度
            maxHeight: 50.h,
            minHeight: 50.h,
            child: PersonTopMenuWidget(),
          ),
        ),
        buildSliverList(20),
      ],
    );
  }

  // 构建固定高度的SliverList，count为列表项属相
  Widget buildSliverList([int count = 5]) {
    LogUtils.d("sdasdasdasdasd");
    return SliverFixedExtentList(
      itemExtent: 50,
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return ListTile(title: Text('$index'));
        },
        childCount: count,
      ),
    );
  }

  // 构建 header
  Widget buildHeader(int i) {
    return Container(
      color: Colors.lightBlue.shade200,
      alignment: Alignment.centerLeft,
      child: Text("PersistentHeader $i"),
    );
  }
}
