import 'package:flutter_network_connectivity/flutter_network_connectivity.dart';
import 'package:food_otus/core/client.dart';
import 'package:food_otus/data/models/network/result_json.dart';

class UserRemoteSource {
  final FlutterNetworkConnectivity _flutterNetworkConnectivity =
      FlutterNetworkConnectivity(lookUpUrl: "google.com");
  final Client client;

  UserRemoteSource({required this.client});

  Future<ResultJson> signIn(String login, String password) async {
    if (await _flutterNetworkConnectivity.isInternetConnectionAvailable()) {
      var response = await client.putData(
        "user",
        data: {
          "id": 0,
          "login": login,
          "password": password,
          "token": "",
          "avatar": "",
        },
      );
      return ResultJson.fromJson(response);
    } else {
      throw Exception();
    }
  }

  Future<ResultJson> signUp(String login, String password) async {
    if (await _flutterNetworkConnectivity.isInternetConnectionAvailable()) {
      var response = await client.postData(
        "http://foodapi.dzolotov.tech/user",
        data: {
          "id": 0,
          "login": login,
          "password": password,
          "token": "",
          "avatar": "",
        },
      );
      return ResultJson.fromJson(response);
    } else {
      throw Exception();
    }
  }
}
