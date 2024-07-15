// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downlods.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DownloadsImpl _$$DownloadsImplFromJson(Map<String, dynamic> json) =>
    _$DownloadsImpl(
      posterPath: json['poster_path'] as String?,
      backdroppath: json['backdrop_path'] as String?,
      title: json['title'] as String?,
      overview: json['overview'] as String?,
      release_date: json['release_date'] as String?,
    );

Map<String, dynamic> _$$DownloadsImplToJson(_$DownloadsImpl instance) =>
    <String, dynamic>{
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdroppath,
      'title': instance.title,
      'overview': instance.overview,
      'release_date': instance.release_date,
    };
