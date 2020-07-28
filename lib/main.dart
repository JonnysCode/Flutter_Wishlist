import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wishlist/app/locator.dart';
import 'package:wishlist/app/router.gr.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: Router(),
      initialRoute: Routes.startupView,
    );
  }
}
