import 'dart:async';
import 'dart:core';
import 'dart:io';

import 'package:colorboxes/colorBoxesDB.dart';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:synchronized/synchronized.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static DatabaseHelper _databaseHelper;
  static Database _database;

  factory DatabaseHelper() {
    if (_databaseHelper == null) {
      _databaseHelper = DatabaseHelper._internal();
      return _databaseHelper;
    } else {
      return _databaseHelper;
    }
  }
  DatabaseHelper._internal();

  Future<Database> _getDatabase() async {
    if (_database == null) {
      _database = await _initializeDatabase();
      return _database;
    } else {
      return _database;
    }
  }

  Future<Database> _initializeDatabase() async {
    var lock = Lock();

    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, "colorBoxes.db");

// Check if the database exists
    var exists = await databaseExists(path);

    if (!exists) {
      // Should happen only the first time you launch your application
      print("Creating new copy from asset");

      // Make sure the parent directory exists
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {}

      // Copy from asset
      ByteData data = await rootBundle.load(join("assets", "colorBoxes.db"));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      // Write and flush the bytes written
      await File(path).writeAsBytes(bytes, flush: true);
    } else {
      print("Opening existing database");
    }
// open the database
    return await openDatabase(path, readOnly: false);
  }

  Future<int> addScore(ColorBoxesDB colorBoxesScore) async {
    var db = await _getDatabase();
    var sonuc = await db.insert("colorBoxesScore", colorBoxesScore.toMap());
    print(sonuc);
    return sonuc;
  }

  Future<List<Map<String, dynamic>>> getScore() async {
    var db = await _getDatabase();
    var sonuc =
        await db.rawQuery('select * from colorBoxesScore order by score desc');
    print(sonuc);
    return sonuc;
  }

  Future<List<ColorBoxesDB>> getScoreList() async {
    var pokemonlarMapListesi = await getScore();
    // ignore: deprecated_member_use
    var pokemonListesi = List<ColorBoxesDB>();
    for (Map map in pokemonlarMapListesi) {
      pokemonListesi.add(ColorBoxesDB.fromMap(map));
      break;
    }
    return pokemonListesi;
  }

  Future<int> deleteScore() async {
    var db = await _getDatabase();
    var sonuc = await db.delete("colorBoxesScore", where: 'score = ?');
    print(sonuc);
    return sonuc;
  }
}
