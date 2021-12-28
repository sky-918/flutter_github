import 'package:flutter/widgets.dart';

/// @auter Created by tyy on 2021/11/25
/// desc   :可以进行缓存子widget
/// version:1.0.0
///
///  [keepAlive] 为 true 后会缓存所有的列表项，列表项将不会销毁。为 false 时，列表项滑出预加载区域后将会别销毁。
///  使用时一定要注意是否必要，因为对所有列表项都缓存的会导致更多的内存消耗
///

class KeepAliveWrapper extends StatefulWidget {
  const KeepAliveWrapper({
    Key? key,
    this.keepAlive = true,
    required this.child,
  }) : super(key: key);
  final bool keepAlive;
  final Widget child;

  @override
  _KeepAliveWrapperState createState() => _KeepAliveWrapperState();
}

class _KeepAliveWrapperState extends State<KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }

  @override
  void didUpdateWidget(covariant KeepAliveWrapper oldWidget) {
    if (oldWidget.keepAlive != widget.keepAlive) {
      // keepAlive 状态需要更新，实现在 AutomaticKeepAliveClientMixin 中
      updateKeepAlive();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  bool get wantKeepAlive => widget.keepAlive;
}
