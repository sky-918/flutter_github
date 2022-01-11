import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github/res/res_index.dart';

import '../bloctest_bloc.dart';

/// @auter Created by tyy on 2022/1/10
/// desc   :
/// version:v1.0.0
///
class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BlocPage"),
      ),
      body: Center(
        child: BlocBuilder<testBloc, TestInitial>(builder: (context, state) {
          return Text(
            '${state.n}',
            style: TextStyles.textSize18Bold,
              textScaleFactor: 5
          );
        }),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: const Key('countergActionButton'),
            child: const Icon(Icons.add),
            onPressed: () {
              context.read<testBloc>().add(Addtset());
            },
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('countent_floatingActionButton'),
            child: const Icon(Icons.remove),
            onPressed: () => context.read<testBloc>().add(Minus()),
          ),
        ],
      ),
    );
  }
}
