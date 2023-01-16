import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_json.freezed.dart';
part 'user_json.g.dart';

@freezed
class UserJson with _$UserJson {

  const factory UserJson({
    required int id,
    required String? login,
    required String? password,
    required String? token,
    required String? avatar,
  }) = _UserJson;

  factory UserJson.fromJson(Map<String, Object?> json) => _$UserJsonFromJson(json);
}


