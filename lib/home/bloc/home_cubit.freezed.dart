// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  HomeStatus get status => throw _privateConstructorUsedError;
  List<String>? get jokeCategory => throw _privateConstructorUsedError;
  String? get searchInput => throw _privateConstructorUsedError;
  List<String> get jokeBlackList => throw _privateConstructorUsedError;
  JokeDto? get jokeDto => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {HomeStatus status,
      List<String>? jokeCategory,
      String? searchInput,
      List<String> jokeBlackList,
      JokeDto? jokeDto,
      String? error});

  $JokeDtoCopyWith<$Res>? get jokeDto;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? jokeCategory = freezed,
    Object? searchInput = freezed,
    Object? jokeBlackList = null,
    Object? jokeDto = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      jokeCategory: freezed == jokeCategory
          ? _value.jokeCategory
          : jokeCategory // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      searchInput: freezed == searchInput
          ? _value.searchInput
          : searchInput // ignore: cast_nullable_to_non_nullable
              as String?,
      jokeBlackList: null == jokeBlackList
          ? _value.jokeBlackList
          : jokeBlackList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      jokeDto: freezed == jokeDto
          ? _value.jokeDto
          : jokeDto // ignore: cast_nullable_to_non_nullable
              as JokeDto?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $JokeDtoCopyWith<$Res>? get jokeDto {
    if (_value.jokeDto == null) {
      return null;
    }

    return $JokeDtoCopyWith<$Res>(_value.jokeDto!, (value) {
      return _then(_value.copyWith(jokeDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HomeStatus status,
      List<String>? jokeCategory,
      String? searchInput,
      List<String> jokeBlackList,
      JokeDto? jokeDto,
      String? error});

  @override
  $JokeDtoCopyWith<$Res>? get jokeDto;
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? jokeCategory = freezed,
    Object? searchInput = freezed,
    Object? jokeBlackList = null,
    Object? jokeDto = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_HomeState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      jokeCategory: freezed == jokeCategory
          ? _value._jokeCategory
          : jokeCategory // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      searchInput: freezed == searchInput
          ? _value.searchInput
          : searchInput // ignore: cast_nullable_to_non_nullable
              as String?,
      jokeBlackList: null == jokeBlackList
          ? _value._jokeBlackList
          : jokeBlackList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      jokeDto: freezed == jokeDto
          ? _value.jokeDto
          : jokeDto // ignore: cast_nullable_to_non_nullable
              as JokeDto?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {this.status = HomeStatus.initial,
      final List<String>? jokeCategory,
      this.searchInput,
      final List<String> jokeBlackList = const [],
      this.jokeDto,
      this.error})
      : _jokeCategory = jokeCategory,
        _jokeBlackList = jokeBlackList;

  @override
  @JsonKey()
  final HomeStatus status;
  final List<String>? _jokeCategory;
  @override
  List<String>? get jokeCategory {
    final value = _jokeCategory;
    if (value == null) return null;
    if (_jokeCategory is EqualUnmodifiableListView) return _jokeCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? searchInput;
  final List<String> _jokeBlackList;
  @override
  @JsonKey()
  List<String> get jokeBlackList {
    if (_jokeBlackList is EqualUnmodifiableListView) return _jokeBlackList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jokeBlackList);
  }

  @override
  final JokeDto? jokeDto;
  @override
  final String? error;

  @override
  String toString() {
    return 'HomeState(status: $status, jokeCategory: $jokeCategory, searchInput: $searchInput, jokeBlackList: $jokeBlackList, jokeDto: $jokeDto, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._jokeCategory, _jokeCategory) &&
            (identical(other.searchInput, searchInput) ||
                other.searchInput == searchInput) &&
            const DeepCollectionEquality()
                .equals(other._jokeBlackList, _jokeBlackList) &&
            (identical(other.jokeDto, jokeDto) || other.jokeDto == jokeDto) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_jokeCategory),
      searchInput,
      const DeepCollectionEquality().hash(_jokeBlackList),
      jokeDto,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final HomeStatus status,
      final List<String>? jokeCategory,
      final String? searchInput,
      final List<String> jokeBlackList,
      final JokeDto? jokeDto,
      final String? error}) = _$_HomeState;

  @override
  HomeStatus get status;
  @override
  List<String>? get jokeCategory;
  @override
  String? get searchInput;
  @override
  List<String> get jokeBlackList;
  @override
  JokeDto? get jokeDto;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
