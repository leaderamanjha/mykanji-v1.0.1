import '../../../core/app_export.dart';

/// This class is used in the [seventeen_item_widget] screen.
class SeventeenItemModel {
  SeventeenItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
