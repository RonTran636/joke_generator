import 'package:either_dart/either.dart';
import 'package:joke_api/api/api_failure/api_failure.dart';
import 'package:joke_api/home/data/dto/joke_dto.dart';

abstract class HomeRepository {
  Future<Either<ApiFailure, JokeDto>> getJoke({
    List<String>? jokeCategory,
    List<String>? jokeBlackList,
    String? searchInput,
  });
}
