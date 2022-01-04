import 'package:flutter/material.dart';
import '../../pages/person/person_page.dart';

import '../../res/res_index.dart';
import '../../utils/navigator_util.dart';
import '../../widget/keep_alive_wrapper.dart';

/// @auter Created by tyy on 2021/12/30
/// desc   :app的主页面
/// version:v1.0.0
///

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  int _selectedIndex = 0;
  var children = const [
    KeepAliveWrapper(
      child: Page(text: "0"),
    ),
    KeepAliveWrapper(
      child: Page(text: "1"),
    ),
    KeepAliveWrapper(
      child: PersonCenterPage(),
    )
  ];
  final PageController _pageController = PageController();
  final List<BottomNavigationBarItem> _bottomItems = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.stream),
      label: AppStrings.homeWidgetMenuDynamic,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.timeline),
      label: AppStrings.homeWidgetMenuTrend,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: AppStrings.homeWidgetMenuPerson,
    ),
  ];

  void _onItemTapped(index) {
    _selectedIndex = index;
    setState(() {});
  }

  void _onPageviewChane(index) {
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.appTitle),
        actions: [
          IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                // NavigatorUtils.goTestPage(context);
                NavigatorUtils.goPersonCenterPage(context);
              }),
        ],
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: children,
        onPageChanged: _onItemTapped,
        controller: _pageController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomItems,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onPageviewChane,
      ),
    );
  }
}

// Tab 页面
class Page extends StatefulWidget {
  const Page({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    print("build ${widget.text}");
    return Center(child: Text("${widget.text}", textScaleFactor: 5));
  }
}
