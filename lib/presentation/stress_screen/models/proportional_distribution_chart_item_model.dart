import '../../../core/app_export.dart';

class ItemModel {
  Rx<String> color;
  Rx<String> description;
  Rx<String> value;

  ItemModel({
    required this.color,
    required this.description,
    required this.value,
  });
}
