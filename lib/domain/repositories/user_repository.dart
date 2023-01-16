import 'package:food_otus/data/data_sources/user_local_source.dart';
import 'package:food_otus/data/data_sources/user_remote_source.dart';
import 'package:food_otus/domain/entities/user.dart';

class UserRepository {
  final UserRemoteSource remoteSource;
  final UserLocalSource localSource;

  UserRepository({
    required this.remoteSource,
    required this.localSource,
  });

  Future<bool> signUp(String login, String password) async {
    //var result = await remoteSource.signUp(login, password);
    await localSource.addUser(login, password);
    return true;
  }

  Future<bool> signIn(String login, String password) async {
    //var result = await remoteSource.signIn(login, password);
    //return result.token?.isNotEmpty ?? false;
    var result = await localSource.authUser(login, password);
    return result;
  }

  bool isAuth() {
    var result = localSource.findUser();
    return result != null;
  }

  User? getUser() {
    var result = localSource.findUser();
    if (result == null) return null;
    return User(id: result.id, login: result.login);
  }
}
