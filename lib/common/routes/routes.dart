import 'package:eduflex/pages/signin/models/signin_notifier.dart';
import 'package:eduflex/pages/welcome/welcome.dart';
import 'package:flutter/material.dart';

class AppPages {
  static List<dynamic> routes() {
    return [];
  }

  //
  static MaterialPageRoute generateRouteSettings(RouteSettings settings) {
    print('Utsab: Route not found! ${settings.name}');
    return MaterialPageRoute(
        settings: settings, builder: (_) => WelcomeScreen());
  }
}
