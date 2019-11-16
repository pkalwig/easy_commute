import 'package:flutter/material.dart';

import 'package:easy_commute/views/splash_view.dart';

void main() => runApp(MyApp());

final ThemeData _myAppTheme = _buildMyAppTheme();

ThemeData _buildMyAppTheme() => ThemeData.light();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'Easy Commute',
      home: SplashView(),
      theme: _myAppTheme
  );
}
