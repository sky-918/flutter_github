import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'app/application.dart';
import 'routes/routes.dart';

void main() {
  runApp(AppComponent());
}

class AppComponent extends StatefulWidget {
  const AppComponent({Key? key}) : super(key: key);

  @override
  _AppComponentState createState() => _AppComponentState();
}

class _AppComponentState extends State<AppComponent> {
  _AppComponentState(){
    final router=FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }
  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: 'Fluro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Application.router.generator,
    );
   print("initial route = ${app.initialRoute}");
    return app;
  }
}
