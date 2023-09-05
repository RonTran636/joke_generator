import 'package:either_dart/src/either.dart';
import 'package:joke_api/api/api_client.dart';
import 'package:joke_api/api/api_failure/api_failure.dart';
import 'package:joke_api/home/data/dto/joke_dto.dart';
import 'package:joke_api/home/data/repository/home_repository.dart';

class HomeRemoteRepository implements HomeRepository {
  HomeRemoteRepository(this._api);

  final ApiClient _api;

  @override
  Future<Either<ApiFailure, JokeDto>> getJoke({
    List<String>? jokeCategory,
    List<String>? jokeBlackList,
    String? searchInput,
  }) async {
    String mCategory = '';
    if (jokeCategory == null) {
      mCategory = 'Any';
    } else {
      for (var category in jokeCategory) {
        mCategory += category != jokeCategory.last ? '$category,' : category;
      }
    }
    print('mCategory $mCategory');
    final response = _api.get(
      'joke/$mCategory',
      queryParameters: {
        'type': 'single',
        'blacklistFlags': '',
        'contains': searchInput,
      }..removeWhere((key, value) => value == null),
    );
    return Left(ApiFailure.connectivityError());
  }
}
