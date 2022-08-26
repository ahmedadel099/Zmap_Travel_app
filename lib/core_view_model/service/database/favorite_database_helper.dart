// import 'package:demo_zmap/model/favorite_trips_model.dart';
// import 'package:demo_zmap/util/const.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
//
// class FavoriteDatabaseHelper {
//
//   FavoriteDatabaseHelper._();
//
//   static final FavoriteDatabaseHelper db = FavoriteDatabaseHelper._();
//
//   static Database _database ;
//   Future<Database> get database async{
//     if(_database != null ) return _database;
//
//     _database = await initDb();
//     return _database;
//   }
//
//   initDb() async {
//     String path = join(await getDatabasesPath(), "Favorite.db");
//     return await openDatabase(path,
//         version: 1, onCreate: (Database db, int version) async {
//           await db.execute('''
//       CREATE TABLE # $tableFavorite (
//       $columnName TEXT NOT NULL,
//       $columnImage TEXT NOT NULL,
//       $columnPrice TEXT NOT NULL,
//       $columnLocation TEXT NOT NULL,
//       $columnDetails TEXT NOT NULL)
//
//        ''');
//         });
//   }
//
//  Future<List<FavoriteTripsModel>> getAllFavItems() async {
//     var dbClient = await database;
//     List<Map> maps = await dbClient.query(tableFavorite);
//
//     List<FavoriteTripsModel> list = maps.isEmpty?
//         maps.map((item) => FavoriteTripsModel.fromJson(item)).toList()
//         : [];
//
//     return list;
//   }
//
//
//   insert(FavoriteTripsModel model)async {
//     var dbClient = await database;
//     await dbClient .insert(tableFavorite,
//         model.toJson(),
//         conflictAlgorithm: ConflictAlgorithm.replace );
//
//   }
// }