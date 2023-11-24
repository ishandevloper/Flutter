import 'dart:io';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseConnection {
Future<Database> setDatabase() async {
  var directory = await getApplicationDocumentsDirectory();
  var path = join(directory.path,'db_crud');
  var Database = 
    await openDatabase(path, version: 1, onCreate: createDatabase);
    return Database;
}  
    Future<void> createDatabase(Database database, int version) async {
    String sql2 =
        "Create TABLE EXPENSE(id INTEGER PRIMARY KEY,title TEXT,year TEXT,month TEXT,amount INTEGER)";
    String sql =
        "Create TABLE EXPENSE(id INTEGER PRIMARY KEY,title TEXT,year TEXT,month TEXT,amount INTEGER)";
    await database.execute(sql);
    await database.execute(sql2);
  }
    }

