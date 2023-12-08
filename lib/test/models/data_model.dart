class DataModel {
  final int mangerId;
  final String name;
  final int age;
  final String section;

  DataModel({
    required this.mangerId,
    required this.name,
    required this.age,
    required this.section,
  });

  // Add a factory method to convert the map to a DataModel
  factory DataModel.fromMap(Map<String, dynamic> map) {
    return DataModel(
      mangerId: map['manger_id'],
      name: map['name'],
      age: map['age'],
      section: map['section'],
    );
  }
}
