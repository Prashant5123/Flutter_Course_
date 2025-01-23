import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:to_do_practice/cardmodel.dart';
import 'package:to_do_practice/myapp.dart';

dynamic database;
List<Map> data=[];

insertData(CardModel obj)async{
  Database localdb= await database;

  localdb.insert("Card", obj.cardMap(),

  conflictAlgorithm: ConflictAlgorithm.replace,
  );
  data= await getData();
  

  print("Data inserted");
}

updateData(CardModel obj,int index)async{
  Database localdb= await database;
  localdb.update("Card",obj.cardMap(),where: "id=?",whereArgs: [index]);

  data=await getData();
}

Future getData()async{
  Database localdb=await database;

  List<Map> data=await localdb.query("Card");
  print(data);
  return data;
}

deleteData(int index)async{
  Database localdb=await database;
  localdb.delete(
    "Card",
    where: "id=?",
    whereArgs: [index],


  );
  data=await getData();
}
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  database=  openDatabase(join( await getDatabasesPath(),"Card9"),
    version: 1,onCreate: (db, version) {
      db.execute('''
            CREATE TABLE CARD(
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              title TEXT,
              description TEXT,
              date TEXT
            )
                ''');
    },
  
  );
  data= await getData();
  runApp(const Main());
}

