import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class SqfDb{
  
  static Database?_db;
Future<Database?>  getDB()async{
    if(_db==null){
      _db=await initDb();
      return _db;
    }else{
      return _db;
    }
  }
  initDb()async{
   String dbPath =await getDatabasesPath();
   String path= join(dbPath,"tasks.db");  
   Database db= await openDatabase(path,onCreate: _onCreate);
   return db;
  }
 _onCreate(Database db, int version) async {
await db.execute('''
CREATE TABLE "Tasks"(
  id INTEGER AUTOINCREMENT NOT NULL PRIMARY,
  taskName NOT NULL TEXT,
  date NOT NULL TEXT,
  statu NOT NULL TEXT
)
''');
print("DataBase Created");
 }
   
}
// void createDataBase() async {
//     // var databasesPath = await getDatabasesPath();
//     db = openDatabase("todo.db", version: 1,
//         onCreate: (Database db, int version) {
//       // When creating the db, create the table
//       db
//           .execute(
//               'CREATE TABLE Tasks (id INTEGER PRIMARY KEY, taskName TEXT, date TEXT, status TEXT)')
//           .then((value) {
//         print("db create");
//       }).catchError((onError) {
//         print(onError.toString());
//       });
//     }, onOpen: (db) {
//       print("open");
//     });
//   }

//   void insertInDatabase() {
//     db.transaction((txn) async {
//       try {
//         await txn.rawInsert(
//             "INSERT Into tasks(id,taskName,date,status) VALUES(1,do,22/7,do)");
//       } catch (e) {
//         print(e.toString());
//       }
//       return null;
//     });
//   }