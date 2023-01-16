import 'package:food_otus/core/database.dart';
import 'package:food_otus/data/models/db/user_db.dart';
import 'dart:math';
import 'package:collection/collection.dart';
import 'package:uuid/uuid.dart';

class UserLocalSource {
  final Database database;

  UserLocalSource({required this.database});

  Future<void> addUser(String login, String password) async {
    var lastId = database.userBox.isEmpty
        ? 2
        : database.userBox.values.map((e) => e.id).reduce(max);
    var userDB = UserDB(id: lastId++, login: login, password: password);
    database.userBox.add(userDB);
  }

  Future<bool> authUser(String login, String password) async {
    var user = database.userBox.values.firstWhereOrNull(
        (element) => element.login == login && element.password == password);
    if (user == null) return false;
    user.token = const Uuid().v4();
    await user.save();
    return true;
  }

  UserDB? findUser() {
    return database.userBox.values
        .firstWhereOrNull((element) => element.token != null);
  }
}
