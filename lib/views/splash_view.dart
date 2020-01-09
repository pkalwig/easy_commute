import 'package:flutter/material.dart';

import 'package:easy_commute/services/settings_service.dart';
import 'package:easy_commute/views/home_view.dart';
import 'package:easy_commute/views/welcome_view.dart';

class SplashView extends StatelessWidget{
  final initTask = SettingsService().isFirstRun;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Center(
              child: FutureBuilder<bool>(
            future: initTask(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data) {
                  WidgetsBinding.instance.addPostFrameCallback((_) =>
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => WelcomeView())));
                } else {
                  WidgetsBinding.instance.addPostFrameCallback((_) =>
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomeView())));
                }
                return Text(snapshot.data.toString());
              } else if (snapshot.hasError) {
                return Center(child: Text("${snapshot.error}"));
              }
              return Center(child: CircularProgressIndicator());
            },
          )),
        ),
      );
}