// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';

// // this class will contain every thing about SQFLite from wael abo hamza channel https://youtu.be/uV45geJJzqs
// class SqfDb {
//   static Database? _db;
//   // it's an normal way to make getter in flutter just write get
//   Future<Database?> get db async {
//     if (_db == null) {
//       _db = await initDb();
//       return _db;
//     } else {
//       return _db;
//     }
//   }

//   initDb() async {
//     String dbPath = await getDatabasesPath();
//     String path = join(dbPath, "tasks.db");
//     Database db = await openDatabase(path,
//         onCreate: _onCreate, version: 3, onUpgrade: _onUpgrade);
//     return db;
//   }

//   _onUpgrade(Database db, int oldversion, int newversion) async {}
//   _onCreate(Database db, int version) async {
//     await db.execute('''
// CREATE TABLE "Tasks"(
//   id INTEGER AUTOINCREMENT NOT NULL PRIMARY,
//   taskName NOT NULL TEXT,
//   date NOT NULL TEXT,
//   statu NOT NULL TEXT
// )
// ''');
//     print("DataBase Created");
//   }

// // here  we will make and crud all methods at the first we get our db and it can be null so we user ? thene we call respond in every way in crud method that men read return list and every thing else return int
//   readData(String sql) async {
//     Database? mydb = await db;
//     List<Map> response = await mydb!.rawQuery(sql);
//     return response;
//   }

//   insertData(String sql) async {
//     Database? mydb = await db;
//     int response = await mydb!.rawInsert(sql);
//     return response;
//   }

//   updateData(String sql) async {
//     Database? mydb = await db;
//     int response = await mydb!.rawUpdate(sql);
//     return response;
//   }

//   deleteData(String sql) async {
//     Database? mydb = await db;
//     int response = await mydb!.rawDelete(sql);
//     return response;
//   }
// }

// //  this will we be optmal to every SQFLite project you want to use
