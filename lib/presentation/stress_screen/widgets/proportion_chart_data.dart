import 'dart:ui';

class ProportionChartData {
  String title;
  List<ProportionChartItem> items;

  ProportionChartData({
    required this.title,
    required this.items,
  });
}

class ProportionChartItem {
  Color color;
  String description;
  String value;
  double percentage;

  ProportionChartItem(
      {required this.color,
      required this.description,
      required this.value,
      required this.percentage});
}
