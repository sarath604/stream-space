import 'package:json_annotation/json_annotation.dart';

part 'search_respo.g.dart';

@JsonSerializable()
class SearchRespo {
  @JsonKey(name: 'results')
  List<SearchResultData> results;

  SearchRespo({
    this.results = const [],
  });

  factory SearchRespo.fromJson(Map<String, dynamic> json) {
    return _$SearchRespoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchRespoToJson(this);
}

@JsonSerializable()
class SearchResultData {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'overview')
  String? overview;

  @JsonKey(name: 'release_date')
  String? releasedate;

  @JsonKey(name: 'backdrop_path')
  String? backdroppath;

  SearchResultData({
    this.id,
    this.originalTitle,
    this.posterPath,
    this.backdroppath,
    this.overview,
    this.releasedate,
  });

  factory SearchResultData.fromJson(Map<String, dynamic> json) {
    return _$SearchResultDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResultDataToJson(this);
}
