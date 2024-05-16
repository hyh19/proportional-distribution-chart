import '../../../core/app_export.dart';
import 'userprofilesection_item_model.dart';

/// This class defines the variables used in the [stress_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class StressModel {
  Rx<List<UserprofilesectionItemModel>> userprofilesectionItemList = Rx([
    UserprofilesectionItemModel(textValue: "过载".obs, percentageValue: "5%".obs),
    UserprofilesectionItemModel(
        textValue: "偏高".obs, percentageValue: "15%".obs),
    UserprofilesectionItemModel(
        textValue: "正常".obs, percentageValue: "35%".obs),
    UserprofilesectionItemModel(textValue: "优秀".obs, percentageValue: "65%".obs)
  ]);
}
