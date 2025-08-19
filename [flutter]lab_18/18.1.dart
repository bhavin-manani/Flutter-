//18.1-  Design Login Screen and Fetch Username and Password from Database. (A)

//myDatabase :--

import 'package:project_flutter/%5Bflutter%5Dlab_18/18.2.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {

  static final DatabaseHelper instance = DatabaseHelper._internal();
  DatabaseHelper._internal();
  Database? _database;

  Future<Database> initDB() async {
    final path = join(await getDatabasesPath(), "studentDB.db");

    return await openDatabase(
        path,
        version: 1,
        onCreate: (db,version) async {
          await db.execute('''
      CREATE TABLE studentDetail(
        studentId INTEGER PRIMARY KEY AUTOINCREMENT,
        studentName TEXT,
        studentEnrollmentNo TEXT,
        semester TEXT,
        branch TEXT,
        mobile TEXT,
        password TEXT
      )
    ''');
        }
    );

  }
//------------------------------------------------------------------------------
  Future<int> insertStudent(Students student) async {
    final db = _database ?? await initDB();
    return await db.insert('studentDetail', student.toMap());
  }
//------------------------------------------------------------------------------
  Future<List<Students>> getStudents() async {
    final db = _database ?? await initDB();
    final result = await db.query('studentDetail');
    return result.map( (e) => Students.fromMap(e) ).toList();
  }
//------------------------------------------------------------------------------
  Future<Students?>  getStudentByName(String studentName) async{
    final db = _database ?? await initDB();
    final result = await db.query(
      "studentDetail",
      where: "studentName = ?",
      whereArgs: [studentName],
    );
    if(result.isNotEmpty){
      return Students.fromMap(result.first);
    }else{
      return null;
    }
  }
//------------------------------------------------------------------------------
  Future<int> updateStudentDetail(Students student) async{
    final db=_database ?? await initDB();
    return await db.update("studentDetail",
      student.toMap(),
      where: "studentId = ?",
      whereArgs: [student.studentId],
    );
  }
//------------------------------------------------------------------------------
  Future<int> deleteStudent(int id) async{
    final db=_database ?? await initDB();
    return await db.delete(
      "studentDetail",
      where: "studentId = ?",
      whereArgs: [id],
    );
  }
//------------------------------------------------------------------------------
}
