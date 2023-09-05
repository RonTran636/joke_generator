// To parse this JSON data, do
//
//     final jokeDto = jokeDtoFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'joke_dto.freezed.dart';
part 'joke_dto.g.dart';

JokeDto jokeDtoFromJson(String str) => JokeDto.fromJson(json.decode(str));

String jokeDtoToJson(JokeDto data) => json.encode(data.toJson());

@freezed
class JokeDto with _$JokeDto {
  const factory JokeDto({
    required bool error,
    required String setup,
    required String delivery,
    required int id,
    String? category,
    String? type,
    Flags? flags,

    bool? safe,
    String? lang,
  }) = _JokeDto;

  factory JokeDto.fromJson(Map<String, dynamic> json) => _$JokeDtoFromJson(json);
}

@freezed
class Flags with _$Flags {
  const factory Flags({
    bool? nsfw,
    bool? religious,
    bool? political,
    bool? racist,
    bool? sexist,
    bool? explicit,
  }) = _Flags;

  factory Flags.fromJson(Map<String, dynamic> json) => _$FlagsFromJson(json);
}
