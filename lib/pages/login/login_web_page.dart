import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_github/utils/navigator_util.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../network/network.dart';

/// @auter Created by tyy on 2022/1/15
/// desc   :安全登录页面
/// version:v1.0.0
///
class LoginWebPage extends StatefulWidget {
  const LoginWebPage({Key? key}) : super(key: key);

  @override
  _LoginWebPageState createState() => _LoginWebPageState();
}

class _LoginWebPageState extends State<LoginWebPage> {
  @override
  void initState() {
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("安全登录"),
      ),
      body: Stack(
        children: [
          WebView(
            initialUrl: ApiAddress.authorize,
            javascriptMode: JavascriptMode.unrestricted,
            initialMediaPlaybackPolicy: AutoMediaPlaybackPolicy.always_allow,
            navigationDelegate: (NavigationRequest request) {
              if (request.url.startsWith('tyy://authed')) {
                var code = Uri.parse(request.url).queryParameters["code"];

                NavigatorUtils.goPop(context, result: code);
                return NavigationDecision.prevent;
              }
              print('allowing navigation to $request');
              return NavigationDecision.navigate;
            },
            onPageStarted: (String url) {
              print('Page started loading: $url');
            },
            onPageFinished: (String url) {
              print('Page finished loading: $url');
            },
          )
        ],
      ),
    );
  }
}
