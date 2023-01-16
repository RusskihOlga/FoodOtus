import 'package:hive/hive.dart';

part 'user_db.g.dart';

@HiveType(typeId: 6)
class UserDB extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String? token;
  @HiveField(2)
  String login;
  @HiveField(3)
  String password;

  UserDB({
    required this.id,
    this.token,
    required this.login,
    required this.password,
  });
}