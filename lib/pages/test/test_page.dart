
import 'package:flutter/material.dart';
import 'package:flutter_github/modle/person_events_bean.dart';
import 'package:flutter_github/network/network.dart';
import 'package:flutter_github/pages/person/bloc/person_bean.dart';
import 'package:flutter_github/utils/log_util.dart';
import 'package:oktoast/oktoast.dart';

import '/utils/navigator_util.dart';

/// @auter Created by tyy on 2021/12/29
/// desc   :一个测试各种UI的页面
/// version:v1.0.0
///

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("测试页面"),
        ),
        body: Column(
          children: [
            TextButton(
                onPressed: () {
                  NavigatorUtils.goTestBlocPage(context);
                },
                child: Text("BlocPage")),
            TextButton(
                onPressed: () {
                  NavigatorUtils.goLoginCenterPage(context)
                      .then((value) => showToast(value));
                },
                child: Text("login")),
            TextButton(
                onPressed: () {
                  showToast("sdasdasd");
                },
                child: Text("toast")),
            TextButton(
                onPressed: () {
                  _getNetwordData();
                },
                child: Text("GetUser")),
            TextButton(
                onPressed: () {
                  _getNetPersonEvbents("");
                },
                child: Text("GetUserEvent")),
          ],
        ));
  }

  void _getNetPersonEvbents(String userName) {
    Map<String, int> params = Map();
    params["page"] = 1;
    params["per_page"] = 10;

    PersonEventsBean? personEventsBean;
    HttpClient.instanc.requestNetwork(ApiAddress.getEvent(userName),
        onErrorCall: (msg) {
      LogUtils.d("错误信息：$msg");
    }, onSuccessCall: (data) {
          List<PersonEventsBean> list = [];
          for (int i = 0; i < data.length; i++) {
            list.add(PersonEventsBean.fromJson(data[i]));
          }
      if (list .length>0) {
        LogUtils.d("sassasdds：${list[0].id}");
      }
    });
  }

  void _getNetwordData() {
    PersonBean? personBean;
    HttpClient.instanc.requestNetwork(ApiAddress.loginUrl,
        onErrorCall: (String mesage) {
      LogUtils.d("错误信息：$mesage");
    }, onSuccessCall: (data) {
      personBean = PersonBean.fromJson(data);
      if (personBean != null) {
        LogUtils.d("发送图片: ${personBean!.avatarUrl}");
      }
    });
  }
}

///滑动页面
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurpleAccent,
              ),
            ),
          ),
          const VerticalDivider(
            width: 20,
            thickness: 1,
            indent: 20,
            endIndent: 0,
            color: Colors.grey,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepOrangeAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

///分割线
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

///分割线
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

///分割线
class MyStatefulWidget1 extends StatefulWidget {
  const MyStatefulWidget1({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget1> createState() => _MyStatefulWidgetState1();
}

///分割线
class _MyStatefulWidgetState1 extends State<MyStatefulWidget1> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
