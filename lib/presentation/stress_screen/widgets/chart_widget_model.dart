import 'dart:ui';

class ProportionChartData {
  String title;
  List<Item> items;

  ProportionChartData({
    required this.title,
    required this.items,
  });
}

class Item {
  Color color;
  String description;
  String value;
  double percentage;

  Item(
      {required this.color,
      required this.description,
      required this.value,
      required this.percentage});
}
