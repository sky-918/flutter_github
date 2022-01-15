import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:oktoast/oktoast.dart';

import 'app/application.dart';
import 'routes/routers.dart';

void main() {
  runApp(AppComponent());
}

class AppComponent extends StatefulWidget {
  const AppComponent({Key? key}) : super(key: key);

  @override
  _AppComponentState createState() => _AppComponentState();
}

class _AppComponentState extends State<AppComponent> {
  _AppComponentState() {
    final router = FluroRouter();
    Routers.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Application.router.generator,
      builder: EasyLoading.init(),
    );

    Widget toastWidget = OKToast(
      child: app,
      textStyle: const TextStyle(fontSize: 19.0, color: Colors.white),
      backgroundColor: Colors.grey,
      radius: 10.0,
      position: ToastPosition.bottom,
      animationCurve: Curves.easeIn,
      animationBuilder: const Miui10AnimBuilder(),
      animationDuration: const Duration(milliseconds: 200),
      duration: const Duration(seconds: 3),
    );

    return toastWidget;
  }
}
