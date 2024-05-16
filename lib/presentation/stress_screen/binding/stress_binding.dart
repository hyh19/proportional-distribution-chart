import '../../../core/app_export.dart';
import '../controller/stress_controller.dart';

/// A binding class for the StressScreen.
///
/// This class ensures that the StressController is created when the
/// StressScreen is first loaded.
class StressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StressController());
  }
}
