import 'package:colorboxes/anasayfa.dart';
import 'package:colorboxes/colorBoxes.dart';
import 'package:flutter/material.dart';

import 'gameOver.dart';

void main() {
  runApp(MyApp());
}

class Routes {
  static const String firstPage = '/';
  static const String secondPage = '/second';
  static const String thirdPage = '/third';
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Routes.firstPage: (BuildContext context) => Anasayfa(),
        Routes.secondPage: (BuildContext context) => ColorBoxes(),
        Routes.thirdPage: (BuildContext context) => GameOver(),
      },
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      initialRoute: Routes.firstPage,
    );
  }
}
