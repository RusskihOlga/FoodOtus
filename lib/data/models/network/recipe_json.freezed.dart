// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeJson _$RecipeJsonFromJson(Map<String, dynamic> json) {
  return _RecipeJson.fromJson(json);
}

/// @nodoc
mixin _$RecipeJson {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeJsonCopyWith<RecipeJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeJsonCopyWith<$Res> {
  factory $RecipeJsonCopyWith(
          RecipeJson value, $Res Function(RecipeJson) then) =
      _$RecipeJsonCopyWithImpl<$Res, RecipeJson>;
  @useResult
  $Res call({int id, String? name, int? duration, String? photo});
}

/// @nodoc
class _$RecipeJsonCopyWithImpl<$Res, $Val extends RecipeJson>
    implements $RecipeJsonCopyWith<$Res> {
  _$RecipeJsonCopyWithImpl(this._value, this._then);

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
    Object? photo = freezed,
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
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeJsonCopyWith<$Res>
    implements $RecipeJsonCopyWith<$Res> {
  factory _$$_RecipeJsonCopyWith(
          _$_RecipeJson value, $Res Function(_$_RecipeJson) then) =
      __$$_RecipeJsonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? name, int? duration, String? photo});
}

/// @nodoc
class __$$_RecipeJsonCopyWithImpl<$Res>
    extends _$RecipeJsonCopyWithImpl<$Res, _$_RecipeJson>
    implements _$$_RecipeJsonCopyWith<$Res> {
  __$$_RecipeJsonCopyWithImpl(
      _$_RecipeJson _value, $Res Function(_$_RecipeJson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? duration = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$_RecipeJson(
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
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeJson implements _RecipeJson {
  const _$_RecipeJson(
      {required this.id,
      required this.name,
      required this.duration,
      required this.photo});

  factory _$_RecipeJson.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeJsonFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final int? duration;
  @override
  final String? photo;

  @override
  String toString() {
    return 'RecipeJson(id: $id, name: $name, duration: $duration, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeJson &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, duration, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeJsonCopyWith<_$_RecipeJson> get copyWith =>
      __$$_RecipeJsonCopyWithImpl<_$_RecipeJson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeJsonToJson(
      this,
    );
  }
}

abstract class _RecipeJson implements RecipeJson {
  const factory _RecipeJson(
      {required final int id,
      required final String? name,
      required final int? duration,
      required final String? photo}) = _$_RecipeJson;

  factory _RecipeJson.fromJson(Map<String, dynamic> json) =
      _$_RecipeJson.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  int? get duration;
  @override
  String? get photo;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeJsonCopyWith<_$_RecipeJson> get copyWith =>
      throw _privateConstructorUsedError;
}
