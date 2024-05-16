class ChartModel {
  String title;
  List<Item> items;

  ChartModel({
    required this.title,
    required this.items,
  });
}

class Item {
  String color;
  String description;
  String value;
  double percentage;

  Item(
      {required this.color,
      required this.description,
      required this.value,
      required this.percentage});
}
