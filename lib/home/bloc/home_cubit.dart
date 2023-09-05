import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joke_api/home/data/repository/home_repository.dart';

part 'home_state.dart';

part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._repository) : super(HomeState.initial());

  final HomeRepository _repository;

  final List<String> jokeBlackList = [
    "nsfw",
    "religious",
    "political",
    "racist",
    "sexist",
    "explicit",
  ];

  final jokeCategory = [
    "programing",
    "misc",
    "dark",
    "pun",
    "spooky",
    "christmas",
  ];

  void onSearchChange(String? input) {
    emit(state.copyWith(searchInput: input));
  }

  void onBlackListSelect(
    String value,
    bool isSelected,
  ) {
    final blackList = List<String>.from(state.jokeBlackList);
    isSelected ? blackList.add(value) : blackList.remove(value);
    emit(state.copyWith(jokeBlackList: blackList));
  }

  void onJokeMainCategorySelect(String? value) {
    final mJokeCategory = value == 'Any' ? null : [jokeCategory.first];
    emit(state.copyWith(jokeCategory: mJokeCategory));
  }

  void onJokeCategorySelect(
    String value,
    bool isSelected,
  ) {
    final mJokeCategory = List<String>.from(state.jokeCategory ?? []);
    isSelected ? mJokeCategory.add(value) : mJokeCategory.remove(value);
    emit(state.copyWith(jokeCategory: mJokeCategory));
  }

  void requestJoke() async {
    final response = await _repository.getJoke(
      jokeCategory: state.jokeCategory,
      jokeBlackList: state.jokeBlackList,
      searchInput: state.searchInput,
    );
  }
}
