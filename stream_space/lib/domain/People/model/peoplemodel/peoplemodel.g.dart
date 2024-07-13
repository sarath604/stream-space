// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peoplemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Peoplemodel _$PeoplemodelFromJson(Map<String, dynamic> json) => Peoplemodel(
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      totalResults: (json['total_results'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PeoplemodelToJson(Peoplemodel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      id: (json['id'] as num?)?.toInt(),
      knownForDepartment: json['known_for_department'] as String?,
      originalName: json['original_name'] as String?,
      profilePath: json['profile_path'] as String?,
      knownFor: (json['known_for'] as List<dynamic>?)
          ?.map((e) => KnownFor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'id': instance.id,
      'known_for_department': instance.knownForDepartment,
      'original_name': instance.originalName,
      'profile_path': instance.profilePath,
      'known_for': instance.knownFor,
    };

KnownFor _$KnownForFromJson(Map<String, dynamic> json) => KnownFor(
      backdropPath: json['backdrop_path'] as String?,
      id: (json['id'] as num?)?.toInt(),
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      genreIds: (json['genre_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      releaseDate: json['release_date'] as String?,
    );

Map<String, dynamic> _$KnownForToJson(KnownFor instance) => <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'genre_ids': instance.genreIds,
      'release_date': instance.releaseDate,
    };
