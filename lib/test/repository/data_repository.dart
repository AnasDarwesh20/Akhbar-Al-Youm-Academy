// import 'package:akbar_al_youm_app/models/data_model.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
//
// class DataRepository {
//   late Database _database;
//
//   Future<void> initializeDatabase() async {
//     _database = await openDatabase(
//       join(await getDatabasesPath(), 'Bank.db'),
//       version: 1,
//       onCreate: (db, version) async {
//         await db.execute('CREATE TABLE employees (id INTEGER PRIMARY KEY, name TEXT, age INTEGER , section TEXT)');
//       },
//     );
//   }
//
//   Future<List<DataModel>> fetchData() async {
//     final List<Map<String, dynamic>> maps = await _database.query('employees');
//     return List.generate(maps.length, (i) {
//       return DataModel.fromMap(maps[i]);
//     });
//   }
// }
