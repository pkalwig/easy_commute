import 'dart:async';

import 'package:easy_commute/main.dart';
import 'package:inject/inject.dart';
import 'app_container.inject.dart' as g;

@Injector()
abstract class AppContainer {
  @provide
  MyApp get app;

  static Future<AppContainer> create() async {
    return await g.AppContainer$Injector.create();
  }
}