import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import "package:path/path.dart";

import 'player_model.dart';

dynamic database;

insertPlayerData(Player obj)async{
  Database localDb= await database;
  localDb.insert(
      "Player",
      obj.playerMap(),
      conflictAlgorithm: ConflictAlgorithm.replace
    );
}

Future<List<Map>> getPlayerData()async{
  Database localDb=await database;
  List<Map<String,dynamic>> playerData=await localDb.query("Player");
  return playerData;
}

updatePlayerData(Player obj)async{
  Database localDb=await database;

  localDb.update(
    "Player",
    obj.playerMap(),
    where: "jersyNo=?",
    whereArgs: [45],

    );

}

deletePlayerData()async{
  Database localDb=await database;
  localDb.delete(
    "Player",
    where: "jersyNo=?",
    whereArgs: [45]
  );
}
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  database = openDatabase(join(await getDatabasesPath(), "PlayerDB.db"),
      version: 1, onCreate: (db, version) async {
    await db.execute('''
      create table Player(
        pName TEXT,
        jersyNo INT PRIMARY KEY,
        runs INT,
        avg REAL
      )
        ''');
  });

  Player obj1=Player(pName:"MSD", jersyNo: 7, runs:50000, avg: 50);
  Player obj2=Player(pName: "Rohit", jersyNo: 45, runs: 45000, avg:45.5);

  insertPlayerData(obj1);
  insertPlayerData(obj2);

  print(await getPlayerData());

  obj2=Player(pName:obj2.pName , jersyNo: obj2.jersyNo, runs: obj2.runs+500, avg: obj2.avg+4.5);

  updatePlayerData(obj2);

   print(await getPlayerData());

   deletePlayerData();
    print(await getPlayerData());



}
