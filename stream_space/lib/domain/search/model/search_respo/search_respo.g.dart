// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_respo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchRespo _$SearchRespoFromJson(Map<String, dynamic> json) => SearchRespo(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => SearchResultData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SearchRespoToJson(SearchRespo instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

SearchResultData _$SearchResultDataFromJson(Map<String, dynamic> json) =>
    SearchResultData(
      id: (json['id'] as num?)?.toInt(),
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
      backdroppath: json['backdrop_path'] as String?,
      overview: json['overview'] as String?,
      releasedate: json['release_date'] as String?,
    );

Map<String, dynamic> _$SearchResultDataToJson(SearchResultData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
      'overview': instance.overview,
      'release_date': instance.releasedate,
      'backdrop_path': instance.backdroppath,
    };
