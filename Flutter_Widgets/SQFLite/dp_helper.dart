import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBhelper{
  // singleton- whose one only object that is static to be called by class reference

  DBhelper._(); //private constructor

  static final DBhelper getInstance= DBhelper._();

  //table note

  static final String TABLE_NOTE = "note";
  static final String COLUMN_NOTE_SNO = "s_no";
  static final String COLUMN_NOTE_TITLE = "title";
  static final String COLUMN_NOTE_DESC = "desc";


  Database? myDB;

  //db Open() -> if exist then open else create

  Future<Database> getDB()async{
    // if(myDB!=null){
    //   return myDB!;
    // }
    // else{
    //  myDB= await openDB();
    //  return myDB!;
    // }

      myDB ??= await openDB();
      return myDB!;
    // ?? -> if null
  }

   Future<Database> openDB()async{

   Directory appDir= await getApplicationDocumentsDirectory();
   String dbPath= join(appDir.path,'noteDB.db');

  return await openDatabase(dbPath, onCreate:(db, version){
     // creating all tables here
    // schema- data base structure like column update or any upgrades, whenever schema s performed, it is necessary to upgrade version of database

    db.execute('''
  CREATE TABLE $TABLE_NOTE (
    $COLUMN_NOTE_SNO INTEGER PRIMARY KEY AUTOINCREMENT,
    $COLUMN_NOTE_TITLE TEXT,
    $COLUMN_NOTE_DESC TEXT
  )
''');



  },version: 2 ); // default version put here is 1
  }

  // All Queries

  //insertion
  Future<bool> addNote({required String mTitle,required String mDesc})async{

    var db= await getDB();
   int rowsEffected = await db.insert(TABLE_NOTE, {
      COLUMN_NOTE_TITLE: mTitle,
      COLUMN_NOTE_DESC : mDesc
    }); //insert value in key pair for value parameter

    return rowsEffected>0;

  }

  Future<List<Map<String, dynamic>>> getAllNotes()async{
    var db= await getDB();
    List<Map<String, dynamic>> mData= await db.query(TABLE_NOTE,);
    return mData;
  }


}
