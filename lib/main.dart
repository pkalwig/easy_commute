import 'package:flutter/material.dart';

import 'package:easy_commute/views/splash_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'Easy Commute',
      home: SplashView(),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark()
  );
}
