// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_and_hot_respo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewAndHotRespo _$NewAndHotRespoFromJson(Map<String, dynamic> json) =>
    NewAndHotRespo(
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPages: (json['total_pages'] as num?)?.toInt(),
      totalResults: (json['total_results'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NewAndHotRespoToJson(NewAndHotRespo instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      backdropPath: json['backdrop_path'] as String?,
      id: (json['id'] as num?)?.toInt(),
      originalTitle: json['original_title'] as String?,
      originalname: json['original_name'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      firstairdate: json['first_air_date'] as String?,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'original_title': instance.originalTitle,
      'original_name': instance.originalname,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'first_air_date': instance.firstairdate,
    };
