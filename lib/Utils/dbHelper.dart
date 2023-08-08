import 'dart:io';
import 'dart:ui';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper
{
  static final helper = DbHelper._();
  DbHelper._();
  Database? database;

  Future<Database> CheckDb()
  async {

    // String TB = "incomeexpense";
    // String c_id = "incomeexpense";



    if(database!= null)
      {
        return database!;
      }
    else
      {
        return await CrateDB();
      }
  }

   Future<Database> CrateDB()
  async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path,"my.db");
    return openDatabase(path,version: 1,onCreate: (db, version) {
      String query = "CREATE TABLE incomeexpense (id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT amount TEXT, date TEXT,time TEXT,paytype TEXT,note TEXT)";
      db.execute(query);
    },);
  }

  Future<void> InsertData({required name,required amount,required date,required time,required paytype,required note})
  async {
    print('==================================================');
    print(name);
    print(note);
    database = await CheckDb();
    database!.insert("incomeexpense",{"name":name,"amount":amount,"date":date,"time":time,"paytype":paytype,"note":note});
  }

  Future<List<Map>> ReadData()
  async {
    database = await CheckDb();
    String query = "SELECT * FROM incomeexpense";
    return database!.rawQuery(query);
  }

  Future<void> DeleteData(int id)
  async {
    database = await CheckDb();
    database!.delete("incomeexpense",where: "id=?",whereArgs: [id]);
  }
}