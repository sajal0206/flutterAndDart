import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Databasehelper {
  static final dbname = "persons.db";
  static final dbversion = 1;

  static final table = "my_table";
  static final columnId = "id";
  static final columnName = "name";
  static final columnAge = "age";

  static Database? _database;

  Databasehelper.privateConstructor();
  static final Databasehelper instance = Databasehelper.privateConstructor();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDb(dbname);
    return _database!;
  }

  Future<Database> initDb(String filePath) async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, filePath);
    return await openDatabase(path, version: dbversion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $table(
        $columnId INTEGER PRIMARY KEY,
        $columnName TEXT NOT NULL,
        $columnAge INT NOT NULL
      )
      ''');
  }

  // functions to insert, query, update and delete

  // function to insert row
  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(table, row);
  }

  // function to query all rows
  Future<List<Map<String, dynamic>>> queryAll() async {
    Database db = await instance.database;
    return await db.query(table);
  }

  // function to query specific rows
  Future<List<Map<String, dynamic>>> querySpecific(int id) async {
    Database db = await instance.database;
    // var result = await db.query(table, where: "id > $id"); // 1st Technique
    var result = await db
        .rawQuery("select * from $table where id > $id;"); // 2nd Technique
    return result;
  }

  // function to update value of row
  Future<int> update(int id) async {
    Database db = await instance.database;
    var result = await db.update(table, {"name": "Changed Name", "age": 22},
        where: "id = $id");
    return result;
  }

  // function to delete a row
  Future<int> deleteData(int id) async {
    Database db = await instance.database;
    var result = await db.delete(table, where: "id = $id");
    return result;
  }
}
