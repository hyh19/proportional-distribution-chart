import '../../../core/app_export.dart';
import '../models/stress_model.dart';

/// A controller class for the StressScreen.
///
/// This class manages the state of the StressScreen, including the
/// current stressModelObj
class StressController extends GetxController {
  Rx<StressModel> stressModelObj = StressModel().obs;
}
