import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../models/item_model.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper();

  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    // Initialize database if not already initialized
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'meals.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDatabase,
    );
  }

  Future<void> _createDatabase(Database db, int version) async {
    await db.execute('''
      CREATE TABLE meals (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        imageUrl TEXT,
        name TEXT,
        description TEXT,
        rate REAL,
        time TEXT
      )
    ''');
  }

  Future<int> insertMeal(Meal meal) async {
    Map<String, dynamic> mealMap = meal.toMap();
    final db = await database;
    return await db.insert('meals', mealMap);
  }

  Future<List<Meal>> getMeals() async {
    final db = await database;
    List<Map<String, dynamic>> mealsJson = await db.query('meals');
    List<Meal> meals = mealsJson.map((mealJson) {
      return Meal.fromMap(mealJson);
    }).toList();
    return meals;
  }
  Future<void> deleteMealByIndex(int index) async {
    final db = await database;

    // استرجاع جميع الوجبات مرتبة حسب الـ id
    List<Map<String, dynamic>> meals = await db.query(
      'meals',
      orderBy: 'id ASC', // ترتيب تصاعدي حسب الـ ID
    );

    // التحقق من أن الرقم المطلوب داخل النطاق
    if (index >= 0 && index < meals.length) {
      int mealId = meals[index]['id']; // الحصول على ID للعنصر المطلوب

      // حذف العنصر من قاعدة البيانات
      await db.delete(
        'meals',
        where: 'id = ?',
        whereArgs: [mealId],
      );
    } else {
      print("⚠️ لا يوجد عنصر بهذا الترتيب!");
    }
  }
}