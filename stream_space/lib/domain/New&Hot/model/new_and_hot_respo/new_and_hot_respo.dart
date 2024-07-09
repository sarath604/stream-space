import 'package:json_annotation/json_annotation.dart';


part 'new_and_hot_respo.g.dart';

@JsonSerializable()
class NewAndHotRespo {
	int? page;
	List<Result> results;
	@JsonKey(name: 'total_pages') 
	int? totalPages;
	@JsonKey(name: 'total_results') 
	int? totalResults;

	NewAndHotRespo({
		this.page, 
		this.results=const[], 
		this.totalPages, 
		this.totalResults, 
	});

	factory NewAndHotRespo.fromJson(Map<String, dynamic> json) {
		return _$NewAndHotRespoFromJson(json);
	}

	Map<String, dynamic> toJson() => _$NewAndHotRespoToJson(this);
}


@JsonSerializable()
class Result {

  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'original_name')
  String? originalname;

  @JsonKey(name: 'overview')
  String? overview;

  @JsonKey(name: 'poster_path')
  String? posterPath;
  
  @JsonKey(name: 'release_date')
  String? releaseDate;

   @JsonKey(name: 'first_air_date')
  String? firstairdate;

  Result({
    this.backdropPath,
    this.id,
    this.originalTitle,
    this.originalname,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.firstairdate
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return _$ResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
