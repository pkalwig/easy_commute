import 'package:flutter/material.dart';

import 'package:easy_commute/services/settings_service.dart';

class SplashView extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>
    Scaffold(
      body: SafeArea(
        child: Center(
            child: FutureBuilder<bool>(
              future: SettingsService().isFirstRun(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data.toString());
                }
                else if (snapshot.hasError) {
                  return Center(child: Text("${snapshot.error}"));
                }
                return Center(child: CircularProgressIndicator());
              },
            )
        ),
      ),
    );
}