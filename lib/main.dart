import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'package:iconsulting/routes.dart';
import 'screens/home/home_screen.dart';
import 'style_guide.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}