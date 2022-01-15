import 'package:flutter/material.dart';
import 'package:flutter_github/utils/navigator_util.dart';
import 'package:oktoast/oktoast.dart';

/// @auter Created by tyy on 2022/1/13
/// desc   : 登录页面
/// version:v1.0.0
///
///

GlobalKey globalKey = GlobalKey();

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      key: globalKey,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            autofocus: true,
            decoration: InputDecoration(
                labelText: "用户名",
                hintText: "用户名或者邮箱",
                prefixIcon: Icon(Icons.person)),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "密码",
                hintText: "请输入登录密码",
                prefixIcon: Icon(Icons.lock)),
            obscureText: true,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    onLogin();
                  },
                  child: Text("无用登录")),
              ElevatedButton(
                  onPressed: () {
                    //跳转安全登录
                    NavigatorUtils.goLoginWebPage(context);
                  },
                  child: Text("安全登录")),
            ],
          )
        ],
      ),
    );
  }

  void onLogin() {
    showToast("请使用安全登录");
  }
}
