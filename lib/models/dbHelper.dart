import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static Future<Database> database() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(join(dbPath, 'addresses.db'), version: 1,
        onCreate: (db, version) {
      return db.execute(
          'CREATE TABLE address(id TEXT PRIMARY KEY, title TEXT, address TEXT, image TEXT)');
    });
  }

  static void insert(String table, Map<String, Object> data) async {
    final db = await DBHelper.database();
    db.insert(table, data, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<List<Map<String, Object>>> getData() async {
    final db = await DBHelper.database();
    return db.query('address');
  }
}
