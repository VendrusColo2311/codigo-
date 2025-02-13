import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final _databaseName = "planets.db";
  static final _databaseVersion = 1;

  static final table = 'planet';

  static final columnId = '_id';
  static final columnName = 'name';
  static final columnDistance = 'distance';
  static final columnSize = 'size';
  static final columnNickname = 'nickname';

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(path,
        version: _databaseVersion,
        onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $table (
        $columnId INTEGER PRIMARY KEY,
        $columnName TEXT NOT NULL,
        $columnDistance REAL NOT NULL,
        $columnSize REAL NOT NULL,
        $columnNickname TEXT
      )
      ''');
  }

  // Métodos CRUD aqui
}
