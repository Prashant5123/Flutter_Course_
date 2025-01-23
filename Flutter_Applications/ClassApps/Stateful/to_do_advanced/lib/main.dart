

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:to_do_advanced/card_model.dart';

import 'package:to_do_advanced/myapp.dart';
import "package:sqflite/sqflite.dart";
import "package:path/path.dart";

dynamic database;
List<Map> data=[];

insertData(CardModel obj)async{
  
  Database localDB=await database;
  localDB.insert(
    "Card",
    obj.cardMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  
  );
  data=await localDB.query("Card");
}

 Future getData ()async{
  Database localDB=await database;
  List<Map> data=await localDB.query(
    "Card",
  );
  return data;
}

deleteData(int index)async{
  Database localDB= await database;

  localDB.delete(
    "Card",
    where:"id=?",
    whereArgs: [index],  
  );

  data=await localDB.query("Card");
}




void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  database = openDatabase(join(await getDatabasesPath(), "Card6.db"),
      version: 1, onCreate: (db, version) async {
    await db.execute('''
      create table Card(
        id INTEGER primary key AUTOINCREMENT,
        title TEXT,
        description TEXT,
        date TEXT
      )
        ''');
  });

data=await getData();
  

  runApp( const Main());
}

