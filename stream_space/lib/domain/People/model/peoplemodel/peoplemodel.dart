import 'package:json_annotation/json_annotation.dart';



part 'peoplemodel.g.dart';

@JsonSerializable()
class Peoplemodel {
  int? page;
  @JsonKey(name: 'results')
  List<Result>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  Peoplemodel({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory Peoplemodel.fromJson(Map<String, dynamic> json) {
    return _$PeoplemodelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PeoplemodelToJson(this);
}

// Result class 

@JsonSerializable()
class Result {
  int? id;
  @JsonKey(name: 'known_for_department')
  String? knownForDepartment;

  @JsonKey(name: 'original_name')
  String? originalName;

  @JsonKey(name: 'profile_path')
  String? profilePath;
  
  @JsonKey(name: 'known_for')
  List<KnownFor>? knownFor;

  Result({
    this.id,
    this.knownForDepartment,
    this.originalName,
    this.profilePath,
    this.knownFor,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return _$ResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}

// Result class list KnownFor

@JsonSerializable()
class KnownFor {

  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;

@JsonKey(name: 'overview')
  String? overview;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'genre_ids')
  List<int>? genreIds;

  @JsonKey(name: 'release_date')
  String? releaseDate;

  KnownFor({
    this.backdropPath,
    this.id,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.genreIds,
    this.releaseDate,
  });

  factory KnownFor.fromJson(Map<String, dynamic> json) {
    return _$KnownForFromJson(json);
  }

  Map<String, dynamic> toJson() => _$KnownForToJson(this);
}
