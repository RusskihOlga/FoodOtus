// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResultJson _$ResultJsonFromJson(Map<String, dynamic> json) {
  return _ResultJson.fromJson(json);
}

/// @nodoc
mixin _$ResultJson {
  String? get token => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultJsonCopyWith<ResultJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultJsonCopyWith<$Res> {
  factory $ResultJsonCopyWith(
          ResultJson value, $Res Function(ResultJson) then) =
      _$ResultJsonCopyWithImpl<$Res, ResultJson>;
  @useResult
  $Res call({String? token, String? status, String? error});
}

/// @nodoc
class _$ResultJsonCopyWithImpl<$Res, $Val extends ResultJson>
    implements $ResultJsonCopyWith<$Res> {
  _$ResultJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultJsonCopyWith<$Res>
    implements $ResultJsonCopyWith<$Res> {
  factory _$$_ResultJsonCopyWith(
          _$_ResultJson value, $Res Function(_$_ResultJson) then) =
      __$$_ResultJsonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token, String? status, String? error});
}

/// @nodoc
class __$$_ResultJsonCopyWithImpl<$Res>
    extends _$ResultJsonCopyWithImpl<$Res, _$_ResultJson>
    implements _$$_ResultJsonCopyWith<$Res> {
  __$$_ResultJsonCopyWithImpl(
      _$_ResultJson _value, $Res Function(_$_ResultJson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_ResultJson(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultJson implements _ResultJson {
  const _$_ResultJson(
      {required this.token, required this.status, required this.error});

  factory _$_ResultJson.fromJson(Map<String, dynamic> json) =>
      _$$_ResultJsonFromJson(json);

  @override
  final String? token;
  @override
  final String? status;
  @override
  final String? error;

  @override
  String toString() {
    return 'ResultJson(token: $token, status: $status, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultJson &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, status, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultJsonCopyWith<_$_ResultJson> get copyWith =>
      __$$_ResultJsonCopyWithImpl<_$_ResultJson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultJsonToJson(
      this,
    );
  }
}

abstract class _ResultJson implements ResultJson {
  const factory _ResultJson(
      {required final String? token,
      required final String? status,
      required final String? error}) = _$_ResultJson;

  factory _ResultJson.fromJson(Map<String, dynamic> json) =
      _$_ResultJson.fromJson;

  @override
  String? get token;
  @override
  String? get status;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_ResultJsonCopyWith<_$_ResultJson> get copyWith =>
      throw _privateConstructorUsedError;
}
