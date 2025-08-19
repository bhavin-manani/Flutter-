// 17.1 - Create Database using Helper Class. (A)
//no output
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBhelper {
  Database? _database;

  Future<Database> initDatabase() async {
    String path = join(await getDatabasesPath(), 'databasedemo.db');
    _database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        db.execute(
          'CREATE TABLE studentdetails(ID int PRIMARY KEY,name varchar)',
        );
      },
    );
    return initDatabase();
  }

  Future<List<Map<String, dynamic>>> getall() async {
    var db = await initDatabase();
    return await db.rawQuery("SELECT * FORM studentdetails");
  }

  Future<void> InsertStudent(Map<String, dynamic> student) async {
    var db = await initDatabase();
    db.insert('studentdetails', student);
  }
}
