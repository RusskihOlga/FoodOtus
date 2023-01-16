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
      _$UserJsonCopyWithImpl<$Res>;
  $Res call(
      {int id, String? login, String? password, String? token, String? avatar});
}

/// @nodoc
class _$UserJsonCopyWithImpl<$Res> implements $UserJsonCopyWith<$Res> {
  _$UserJsonCopyWithImpl(this._value, this._then);

  final UserJson _value;
  // ignore: unused_field
  final $Res Function(UserJson) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? password = freezed,
    Object? token = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserJsonCopyWith<$Res> implements $UserJsonCopyWith<$Res> {
  factory _$$_UserJsonCopyWith(
          _$_UserJson value, $Res Function(_$_UserJson) then) =
      __$$_UserJsonCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String? login, String? password, String? token, String? avatar});
}

/// @nodoc
class __$$_UserJsonCopyWithImpl<$Res> extends _$UserJsonCopyWithImpl<$Res>
    implements _$$_UserJsonCopyWith<$Res> {
  __$$_UserJsonCopyWithImpl(
      _$_UserJson _value, $Res Function(_$_UserJson) _then)
      : super(_value, (v) => _then(v as _$_UserJson));

  @override
  _$_UserJson get _value => super._value as _$_UserJson;

  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? password = freezed,
    Object? token = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$_UserJson(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
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
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.login, login) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.avatar, avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(login),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(avatar));

  @JsonKey(ignore: true)
  @override
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
