import '../core/app_export.dart';
import '../presentation/stress_screen/binding/stress_binding.dart';
import '../presentation/stress_screen/stress_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String stressScreen = '/stress_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: stressScreen,
      page: () => StressScreen(),
      bindings: [StressBinding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => StressScreen(),
      bindings: [StressBinding()],
    )
  ];
}
