// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JokeDto _$$_JokeDtoFromJson(Map<String, dynamic> json) => _$_JokeDto(
      error: json['error'] as bool,
      setup: json['setup'] as String,
      delivery: json['delivery'] as String,
      id: json['id'] as int,
      category: json['category'] as String?,
      type: json['type'] as String?,
      flags: json['flags'] == null
          ? null
          : Flags.fromJson(json['flags'] as Map<String, dynamic>),
      safe: json['safe'] as bool?,
      lang: json['lang'] as String?,
    );

Map<String, dynamic> _$$_JokeDtoToJson(_$_JokeDto instance) =>
    <String, dynamic>{
      'error': instance.error,
      'setup': instance.setup,
      'delivery': instance.delivery,
      'id': instance.id,
      'category': instance.category,
      'type': instance.type,
      'flags': instance.flags,
      'safe': instance.safe,
      'lang': instance.lang,
    };

_$_Flags _$$_FlagsFromJson(Map<String, dynamic> json) => _$_Flags(
      nsfw: json['nsfw'] as bool?,
      religious: json['religious'] as bool?,
      political: json['political'] as bool?,
      racist: json['racist'] as bool?,
      sexist: json['sexist'] as bool?,
      explicit: json['explicit'] as bool?,
    );

Map<String, dynamic> _$$_FlagsToJson(_$_Flags instance) => <String, dynamic>{
      'nsfw': instance.nsfw,
      'religious': instance.religious,
      'political': instance.political,
      'racist': instance.racist,
      'sexist': instance.sexist,
      'explicit': instance.explicit,
    };
