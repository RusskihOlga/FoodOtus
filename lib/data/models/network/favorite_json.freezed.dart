// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoriteJson _$FavoriteJsonFromJson(Map<String, dynamic> json) {
  return _FavoriteJson.fromJson(json);
}

/// @nodoc
mixin _$FavoriteJson {
  int get id => throw _privateConstructorUsedError;
  UserJson get user => throw _privateConstructorUsedError;
  RecipeJson get recipe => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteJsonCopyWith<FavoriteJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteJsonCopyWith<$Res> {
  factory $FavoriteJsonCopyWith(
          FavoriteJson value, $Res Function(FavoriteJson) then) =
      _$FavoriteJsonCopyWithImpl<$Res>;
  $Res call({int id, UserJson user, RecipeJson recipe});

  $UserJsonCopyWith<$Res> get user;
  $RecipeJsonCopyWith<$Res> get recipe;
}

/// @nodoc
class _$FavoriteJsonCopyWithImpl<$Res> implements $FavoriteJsonCopyWith<$Res> {
  _$FavoriteJsonCopyWithImpl(this._value, this._then);

  final FavoriteJson _value;
  // ignore: unused_field
  final $Res Function(FavoriteJson) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? recipe = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserJson,
      recipe: recipe == freezed
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeJson,
    ));
  }

  @override
  $UserJsonCopyWith<$Res> get user {
    return $UserJsonCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $RecipeJsonCopyWith<$Res> get recipe {
    return $RecipeJsonCopyWith<$Res>(_value.recipe, (value) {
      return _then(_value.copyWith(recipe: value));
    });
  }
}

/// @nodoc
abstract class _$$_FavoriteJsonCopyWith<$Res>
    implements $FavoriteJsonCopyWith<$Res> {
  factory _$$_FavoriteJsonCopyWith(
          _$_FavoriteJson value, $Res Function(_$_FavoriteJson) then) =
      __$$_FavoriteJsonCopyWithImpl<$Res>;
  @override
  $Res call({int id, UserJson user, RecipeJson recipe});

  @override
  $UserJsonCopyWith<$Res> get user;
  @override
  $RecipeJsonCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$_FavoriteJsonCopyWithImpl<$Res>
    extends _$FavoriteJsonCopyWithImpl<$Res>
    implements _$$_FavoriteJsonCopyWith<$Res> {
  __$$_FavoriteJsonCopyWithImpl(
      _$_FavoriteJson _value, $Res Function(_$_FavoriteJson) _then)
      : super(_value, (v) => _then(v as _$_FavoriteJson));

  @override
  _$_FavoriteJson get _value => super._value as _$_FavoriteJson;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? recipe = freezed,
  }) {
    return _then(_$_FavoriteJson(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserJson,
      recipe: recipe == freezed
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeJson,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoriteJson implements _FavoriteJson {
  const _$_FavoriteJson(
      {required this.id, required this.user, required this.recipe});

  factory _$_FavoriteJson.fromJson(Map<String, dynamic> json) =>
      _$$_FavoriteJsonFromJson(json);

  @override
  final int id;
  @override
  final UserJson user;
  @override
  final RecipeJson recipe;

  @override
  String toString() {
    return 'FavoriteJson(id: $id, user: $user, recipe: $recipe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteJson &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.recipe, recipe));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(recipe));

  @JsonKey(ignore: true)
  @override
  _$$_FavoriteJsonCopyWith<_$_FavoriteJson> get copyWith =>
      __$$_FavoriteJsonCopyWithImpl<_$_FavoriteJson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoriteJsonToJson(
      this,
    );
  }
}

abstract class _FavoriteJson implements FavoriteJson {
  const factory _FavoriteJson(
      {required final int id,
      required final UserJson user,
      required final RecipeJson recipe}) = _$_FavoriteJson;

  factory _FavoriteJson.fromJson(Map<String, dynamic> json) =
      _$_FavoriteJson.fromJson;

  @override
  int get id;
  @override
  UserJson get user;
  @override
  RecipeJson get recipe;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteJsonCopyWith<_$_FavoriteJson> get copyWith =>
      throw _privateConstructorUsedError;
}
