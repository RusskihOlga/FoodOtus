// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserJson _$UserJsonFromJson(Map<String, dynamic> json) {
  return _UserJson.fromJson(json);
}

/// @nodoc
mixin _$UserJson {
  int get id => throw _privateConstructorUsedError;
  String? get login => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserJsonCopyWith<UserJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserJsonCopyWith<$Res> {
  factory $UserJsonCopyWith(UserJson value, $Res Function(UserJson) then) =
      _$UserJsonCopyWithImpl<$Res, UserJson>;
  @useResult
  $Res call(
      {int id, String? login, String? password, String? token, String? avatar});
}

/// @nodoc
class _$UserJsonCopyWithImpl<$Res, $Val extends UserJson>
    implements $UserJsonCopyWith<$Res> {
  _$UserJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login = freezed,
    Object? password = freezed,
    Object? token = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserJsonCopyWith<$Res> implements $UserJsonCopyWith<$Res> {
  factory _$$_UserJsonCopyWith(
          _$_UserJson value, $Res Function(_$_UserJson) then) =
      __$$_UserJsonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String? login, String? password, String? token, String? avatar});
}

/// @nodoc
class __$$_UserJsonCopyWithImpl<$Res>
    extends _$UserJsonCopyWithImpl<$Res, _$_UserJson>
    implements _$$_UserJsonCopyWith<$Res> {
  __$$_UserJsonCopyWithImpl(
      _$_UserJson _value, $Res Function(_$_UserJson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login = freezed,
    Object? password = freezed,
    Object? token = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$_UserJson(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserJson implements _UserJson {
  const _$_UserJson(
      {required this.id,
      required this.login,
      required this.password,
      required this.token,
      required this.avatar});

  factory _$_UserJson.fromJson(Map<String, dynamic> json) =>
      _$$_UserJsonFromJson(json);

  @override
  final int id;
  @override
  final String? login;
  @override
  final String? password;
  @override
  final String? token;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'UserJson(id: $id, login: $login, password: $password, token: $token, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserJson &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, login, password, token, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserJsonCopyWith<_$_UserJson> get copyWith =>
      __$$_UserJsonCopyWithImpl<_$_UserJson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserJsonToJson(
      this,
    );
  }
}

abstract class _UserJson implements UserJson {
  const factory _UserJson(
      {required final int id,
      required final String? login,
      required final String? password,
      required final String? token,
      required final String? avatar}) = _$_UserJson;

  factory _UserJson.fromJson(Map<String, dynamic> json) = _$_UserJson.fromJson;

  @override
  int get id;
  @override
  String? get login;
  @override
  String? get password;
  @override
  String? get token;
  @override
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$_UserJsonCopyWith<_$_UserJson> get copyWith =>
      throw _privateConstructorUsedError;
}
