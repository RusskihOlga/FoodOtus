// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'step_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StepJson _$StepJsonFromJson(Map<String, dynamic> json) {
  return _StepJson.fromJson(json);
}

/// @nodoc
mixin _$StepJson {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StepJsonCopyWith<StepJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepJsonCopyWith<$Res> {
  factory $StepJsonCopyWith(StepJson value, $Res Function(StepJson) then) =
      _$StepJsonCopyWithImpl<$Res, StepJson>;
  @useResult
  $Res call({int id, String? name, int? duration});
}

/// @nodoc
class _$StepJsonCopyWithImpl<$Res, $Val extends StepJson>
    implements $StepJsonCopyWith<$Res> {
  _$StepJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StepJsonCopyWith<$Res> implements $StepJsonCopyWith<$Res> {
  factory _$$_StepJsonCopyWith(
          _$_StepJson value, $Res Function(_$_StepJson) then) =
      __$$_StepJsonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? name, int? duration});
}

/// @nodoc
class __$$_StepJsonCopyWithImpl<$Res>
    extends _$StepJsonCopyWithImpl<$Res, _$_StepJson>
    implements _$$_StepJsonCopyWith<$Res> {
  __$$_StepJsonCopyWithImpl(
      _$_StepJson _value, $Res Function(_$_StepJson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$_StepJson(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StepJson implements _StepJson {
  const _$_StepJson(
      {required this.id, required this.name, required this.duration});

  factory _$_StepJson.fromJson(Map<String, dynamic> json) =>
      _$$_StepJsonFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final int? duration;

  @override
  String toString() {
    return 'StepJson(id: $id, name: $name, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StepJson &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StepJsonCopyWith<_$_StepJson> get copyWith =>
      __$$_StepJsonCopyWithImpl<_$_StepJson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StepJsonToJson(
      this,
    );
  }
}

abstract class _StepJson implements StepJson {
  const factory _StepJson(
      {required final int id,
      required final String? name,
      required final int? duration}) = _$_StepJson;

  factory _StepJson.fromJson(Map<String, dynamic> json) = _$_StepJson.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  int? get duration;
  @override
  @JsonKey(ignore: true)
  _$$_StepJsonCopyWith<_$_StepJson> get copyWith =>
      throw _privateConstructorUsedError;
}
