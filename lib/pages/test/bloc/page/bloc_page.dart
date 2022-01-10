import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github/pages/test/bloc/page/counter_view.dart';

import '../bloctest_bloc.dart';

/// @auter Created by tyy on 2022/1/10
/// desc   :
/// version:v1.0.0
///
class BlocPage extends StatelessWidget {
  const BlocPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => testBloc(),
      child: CounterView(),
    );
  }
}
