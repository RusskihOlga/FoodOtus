import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_json.freezed.dart';
part 'result_json.g.dart';

@freezed
class ResultJson with _$ResultJson {
  const factory ResultJson({
    required String? token,
    required String? status,
    required String? error,
  }) = _ResultJson;

  factory ResultJson.fromJson(Map<String, Object?> json) => _$ResultJsonFromJson(json);
}