// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'joke_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JokeDto _$JokeDtoFromJson(Map<String, dynamic> json) {
  return _JokeDto.fromJson(json);
}

/// @nodoc
mixin _$JokeDto {
  bool get error => throw _privateConstructorUsedError;
  String? get joke => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  Flags? get flags => throw _privateConstructorUsedError;
  bool? get safe => throw _privateConstructorUsedError;
  String? get lang => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JokeDtoCopyWith<JokeDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeDtoCopyWith<$Res> {
  factory $JokeDtoCopyWith(JokeDto value, $Res Function(JokeDto) then) =
      _$JokeDtoCopyWithImpl<$Res, JokeDto>;
  @useResult
  $Res call(
      {bool error,
      String? joke,
      int? id,
      String? category,
      String? type,
      Flags? flags,
      bool? safe,
      String? lang,
      String? message});

  $FlagsCopyWith<$Res>? get flags;
}

/// @nodoc
class _$JokeDtoCopyWithImpl<$Res, $Val extends JokeDto>
    implements $JokeDtoCopyWith<$Res> {
  _$JokeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? joke = freezed,
    Object? id = freezed,
    Object? category = freezed,
    Object? type = freezed,
    Object? flags = freezed,
    Object? safe = freezed,
    Object? lang = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      joke: freezed == joke
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      flags: freezed == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as Flags?,
      safe: freezed == safe
          ? _value.safe
          : safe // ignore: cast_nullable_to_non_nullable
              as bool?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FlagsCopyWith<$Res>? get flags {
    if (_value.flags == null) {
      return null;
    }

    return $FlagsCopyWith<$Res>(_value.flags!, (value) {
      return _then(_value.copyWith(flags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_JokeDtoCopyWith<$Res> implements $JokeDtoCopyWith<$Res> {
  factory _$$_JokeDtoCopyWith(
          _$_JokeDto value, $Res Function(_$_JokeDto) then) =
      __$$_JokeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool error,
      String? joke,
      int? id,
      String? category,
      String? type,
      Flags? flags,
      bool? safe,
      String? lang,
      String? message});

  @override
  $FlagsCopyWith<$Res>? get flags;
}

/// @nodoc
class __$$_JokeDtoCopyWithImpl<$Res>
    extends _$JokeDtoCopyWithImpl<$Res, _$_JokeDto>
    implements _$$_JokeDtoCopyWith<$Res> {
  __$$_JokeDtoCopyWithImpl(_$_JokeDto _value, $Res Function(_$_JokeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? joke = freezed,
    Object? id = freezed,
    Object? category = freezed,
    Object? type = freezed,
    Object? flags = freezed,
    Object? safe = freezed,
    Object? lang = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_JokeDto(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      joke: freezed == joke
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      flags: freezed == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as Flags?,
      safe: freezed == safe
          ? _value.safe
          : safe // ignore: cast_nullable_to_non_nullable
              as bool?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JokeDto implements _JokeDto {
  const _$_JokeDto(
      {required this.error,
      this.joke,
      this.id,
      this.category,
      this.type,
      this.flags,
      this.safe,
      this.lang,
      this.message});

  factory _$_JokeDto.fromJson(Map<String, dynamic> json) =>
      _$$_JokeDtoFromJson(json);

  @override
  final bool error;
  @override
  final String? joke;
  @override
  final int? id;
  @override
  final String? category;
  @override
  final String? type;
  @override
  final Flags? flags;
  @override
  final bool? safe;
  @override
  final String? lang;
  @override
  final String? message;

  @override
  String toString() {
    return 'JokeDto(error: $error, joke: $joke, id: $id, category: $category, type: $type, flags: $flags, safe: $safe, lang: $lang, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JokeDto &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.joke, joke) || other.joke == joke) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.flags, flags) || other.flags == flags) &&
            (identical(other.safe, safe) || other.safe == safe) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, error, joke, id, category, type, flags, safe, lang, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JokeDtoCopyWith<_$_JokeDto> get copyWith =>
      __$$_JokeDtoCopyWithImpl<_$_JokeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JokeDtoToJson(
      this,
    );
  }
}

abstract class _JokeDto implements JokeDto {
  const factory _JokeDto(
      {required final bool error,
      final String? joke,
      final int? id,
      final String? category,
      final String? type,
      final Flags? flags,
      final bool? safe,
      final String? lang,
      final String? message}) = _$_JokeDto;

  factory _JokeDto.fromJson(Map<String, dynamic> json) = _$_JokeDto.fromJson;

  @override
  bool get error;
  @override
  String? get joke;
  @override
  int? get id;
  @override
  String? get category;
  @override
  String? get type;
  @override
  Flags? get flags;
  @override
  bool? get safe;
  @override
  String? get lang;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_JokeDtoCopyWith<_$_JokeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

Flags _$FlagsFromJson(Map<String, dynamic> json) {
  return _Flags.fromJson(json);
}

/// @nodoc
mixin _$Flags {
  bool? get nsfw => throw _privateConstructorUsedError;
  bool? get religious => throw _privateConstructorUsedError;
  bool? get political => throw _privateConstructorUsedError;
  bool? get racist => throw _privateConstructorUsedError;
  bool? get sexist => throw _privateConstructorUsedError;
  bool? get explicit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlagsCopyWith<Flags> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlagsCopyWith<$Res> {
  factory $FlagsCopyWith(Flags value, $Res Function(Flags) then) =
      _$FlagsCopyWithImpl<$Res, Flags>;
  @useResult
  $Res call(
      {bool? nsfw,
      bool? religious,
      bool? political,
      bool? racist,
      bool? sexist,
      bool? explicit});
}

/// @nodoc
class _$FlagsCopyWithImpl<$Res, $Val extends Flags>
    implements $FlagsCopyWith<$Res> {
  _$FlagsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nsfw = freezed,
    Object? religious = freezed,
    Object? political = freezed,
    Object? racist = freezed,
    Object? sexist = freezed,
    Object? explicit = freezed,
  }) {
    return _then(_value.copyWith(
      nsfw: freezed == nsfw
          ? _value.nsfw
          : nsfw // ignore: cast_nullable_to_non_nullable
              as bool?,
      religious: freezed == religious
          ? _value.religious
          : religious // ignore: cast_nullable_to_non_nullable
              as bool?,
      political: freezed == political
          ? _value.political
          : political // ignore: cast_nullable_to_non_nullable
              as bool?,
      racist: freezed == racist
          ? _value.racist
          : racist // ignore: cast_nullable_to_non_nullable
              as bool?,
      sexist: freezed == sexist
          ? _value.sexist
          : sexist // ignore: cast_nullable_to_non_nullable
              as bool?,
      explicit: freezed == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FlagsCopyWith<$Res> implements $FlagsCopyWith<$Res> {
  factory _$$_FlagsCopyWith(_$_Flags value, $Res Function(_$_Flags) then) =
      __$$_FlagsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? nsfw,
      bool? religious,
      bool? political,
      bool? racist,
      bool? sexist,
      bool? explicit});
}

/// @nodoc
class __$$_FlagsCopyWithImpl<$Res> extends _$FlagsCopyWithImpl<$Res, _$_Flags>
    implements _$$_FlagsCopyWith<$Res> {
  __$$_FlagsCopyWithImpl(_$_Flags _value, $Res Function(_$_Flags) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nsfw = freezed,
    Object? religious = freezed,
    Object? political = freezed,
    Object? racist = freezed,
    Object? sexist = freezed,
    Object? explicit = freezed,
  }) {
    return _then(_$_Flags(
      nsfw: freezed == nsfw
          ? _value.nsfw
          : nsfw // ignore: cast_nullable_to_non_nullable
              as bool?,
      religious: freezed == religious
          ? _value.religious
          : religious // ignore: cast_nullable_to_non_nullable
              as bool?,
      political: freezed == political
          ? _value.political
          : political // ignore: cast_nullable_to_non_nullable
              as bool?,
      racist: freezed == racist
          ? _value.racist
          : racist // ignore: cast_nullable_to_non_nullable
              as bool?,
      sexist: freezed == sexist
          ? _value.sexist
          : sexist // ignore: cast_nullable_to_non_nullable
              as bool?,
      explicit: freezed == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Flags implements _Flags {
  const _$_Flags(
      {this.nsfw,
      this.religious,
      this.political,
      this.racist,
      this.sexist,
      this.explicit});

  factory _$_Flags.fromJson(Map<String, dynamic> json) =>
      _$$_FlagsFromJson(json);

  @override
  final bool? nsfw;
  @override
  final bool? religious;
  @override
  final bool? political;
  @override
  final bool? racist;
  @override
  final bool? sexist;
  @override
  final bool? explicit;

  @override
  String toString() {
    return 'Flags(nsfw: $nsfw, religious: $religious, political: $political, racist: $racist, sexist: $sexist, explicit: $explicit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Flags &&
            (identical(other.nsfw, nsfw) || other.nsfw == nsfw) &&
            (identical(other.religious, religious) ||
                other.religious == religious) &&
            (identical(other.political, political) ||
                other.political == political) &&
            (identical(other.racist, racist) || other.racist == racist) &&
            (identical(other.sexist, sexist) || other.sexist == sexist) &&
            (identical(other.explicit, explicit) ||
                other.explicit == explicit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, nsfw, religious, political, racist, sexist, explicit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlagsCopyWith<_$_Flags> get copyWith =>
      __$$_FlagsCopyWithImpl<_$_Flags>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FlagsToJson(
      this,
    );
  }
}

abstract class _Flags implements Flags {
  const factory _Flags(
      {final bool? nsfw,
      final bool? religious,
      final bool? political,
      final bool? racist,
      final bool? sexist,
      final bool? explicit}) = _$_Flags;

  factory _Flags.fromJson(Map<String, dynamic> json) = _$_Flags.fromJson;

  @override
  bool? get nsfw;
  @override
  bool? get religious;
  @override
  bool? get political;
  @override
  bool? get racist;
  @override
  bool? get sexist;
  @override
  bool? get explicit;
  @override
  @JsonKey(ignore: true)
  _$$_FlagsCopyWith<_$_Flags> get copyWith =>
      throw _privateConstructorUsedError;
}
