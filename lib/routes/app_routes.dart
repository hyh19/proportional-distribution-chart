import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/stress_screen/stress_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String stressScreen = '/stress_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    stressScreen: (context) => StressScreen(),
    initialRoute: (context) => StressScreen()
  };
}
