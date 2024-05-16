import '../../../core/app_export.dart';

/// This class is used in the [userprofilesection_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofilesectionItemModel {
  UserprofilesectionItemModel({this.textValue, this.percentageValue, this.id}) {
    textValue = textValue ?? Rx("过载");
    percentageValue = percentageValue ?? Rx("5%");
    id = id ?? Rx("");
  }

  Rx<String>? textValue;

  Rx<String>? percentageValue;

  Rx<String>? id;
}
