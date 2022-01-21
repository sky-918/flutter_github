import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../res/res_index.dart';
import '../../widget/sliver_header_delegate.dart';
import 'bloc/person_bloc.dart';
import 'widget/person_header.dart';
import 'widget/person_top_menu_widget.dart';

/// @auter Created by tyy on 2021/12/31
/// desc   :个人中心页面
/// version:v1.0.0
///

class PersonCenterPage extends StatelessWidget {
  const PersonCenterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PersonBloc(),
      child: PersistentHeaderRoute(),
    );
  }
}

class PersistentHeaderRoute extends StatefulWidget {
  const PersistentHeaderRoute({Key? key}) : super(key: key);

  @override
  _PersistentHeaderRouteState createState() => _PersistentHeaderRouteState();
}

class _PersistentHeaderRouteState extends State<PersistentHeaderRoute> {
  @override
  void initState() {
    context.read<PersonBloc>().add(UpdataEvent());
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPersistentHeader(
          pinned: false,
          delegate: SliverHeaderDelegate(
            //有最大和最小高度
            maxHeight: 135.h,
            minHeight: 135.h,
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
        SliverPersistentHeader(
          pinned: false,
          delegate: SliverHeaderDelegate(
            //有最大和最小高度
            maxHeight: 106.h,
            minHeight: 106.h,
            child: _getItemTitle(),
          ),
        ),
        buildSliverList(20),
      ],
    );
  }

  // 构建固定高度的SliverList，count为列表项属相
  Widget buildSliverList([int count = 5]) {
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

  _getItemTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("个人动态", style: TextStyles.textSize10),
        Padding(
          padding: EdgeInsets.all(10.r),
          child: SvgPicture.network(
            'https://ghchart.rshah.org/sky-918',
            height: 70.h,
            width: 100.h,
            placeholderBuilder: (BuildContext context) => Container(
                padding:  EdgeInsets.all(30.0.r),
                child: const CircularProgressIndicator()),
          ),
        )
      ],
    );
  }
}
