import '../../../core/app_export.dart';
import 'proportional_distribution_chart_item_model.dart';

/// This class defines the variables used in the [stress_screen],
/// and is typically used to hold data that is passed between different parts of the application.

class StressModel {
  Rx<List<ItemModel>> proportionalDistributionChartItemList = Rx([
    ItemModel(color: "0xFFF8A091".obs, description: "过载".obs, value: "5%".obs),
    ItemModel(color: "0x80F8A091".obs, description: "偏高".obs, value: "15%".obs),
    ItemModel(color: "0x804AC3E3".obs, description: "正常".obs, value: "35%".obs),
    ItemModel(color: "0xFF4AC3E3".obs, description: "优秀".obs, value: "65%".obs)
  ]);
}
