import 'package:flutter/material.dart';
import 'package:flutter_github/utils/log_util.dart';

import '../../widget/sliver_header_delegate.dart';
import 'widget/person_header.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text("sdadas"),
      ),
      body: PersistentHeaderRoute(),
    );

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
            maxHeight: 220,
            minHeight: 180,
            child: PersonHeaderWidget(),
          ),
        ),
        SliverPersistentHeader(
          pinned: true,
          delegate: SliverHeaderDelegate(
            //有最大和最小高度
            maxHeight: 80,
            minHeight: 50,
            child: buildHeader(1),
          ),
        ),
        buildSliverList(),
        SliverPersistentHeader(
          pinned: true,
          delegate: SliverHeaderDelegate.fixedHeight(
            //固定高度
            height: 50,
            child: buildHeader(2),
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
