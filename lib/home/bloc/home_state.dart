part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState{
  const factory HomeState({
    @Default(HomeStatus.initial) HomeStatus status,
    String? postDescription,
    String? error,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState();
}

enum HomeStatus{
  initial,
  loading,
  success,
}