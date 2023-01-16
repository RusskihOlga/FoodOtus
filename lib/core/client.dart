import 'dart:convert';

import 'package:dio/dio.dart';

class Client {
  final String _baseUrl = "https://foodapi.dzolotov.tech/";
  late final Dio _dio;

  Client() {
    _dio = Dio();
    _dio.options.baseUrl = _baseUrl;
    _dio.options.contentType = "application/json";
    _dio.options.headers.addAll({"Accept": "application/json"});
  }

  dynamic getData(String path) async {
      var response = await _dio.get(path);
      return response.data;
  }

  dynamic deleteData(String path) async {
      var response = await _dio.delete(path);
      return response.data;
  }

  dynamic postData(String path, {Map<String, dynamic>? data}) async {
      var response = await _dio.post(path, data: jsonEncode(data));
      return response.data;
  }

  dynamic putData(String path, {Map<String, dynamic>? data}) async {
      var response = await _dio.put(path, data: jsonEncode(data));
      return response.data;
  }
}
