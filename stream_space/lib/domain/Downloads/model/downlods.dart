import 'package:freezed_annotation/freezed_annotation.dart';
part 'downlods.freezed.dart';
part 'downlods.g.dart';

@freezed
class Downloads with _$Downloads {
  const factory Downloads({
    // ignore: invalid_annotation_target
    @JsonKey(name: "poster_path") required String? posterPath,
    // ignore: invalid_annotation_target
    @JsonKey(name: "backdrop_path") required String? backdroppath,
    // ignore: invalid_annotation_target
    @JsonKey(name: "title") required String? title,
    // ignore: invalid_annotation_target
    @JsonKey(name: "overview") required String? overview,
    // ignore: invalid_annotation_target
    @JsonKey(name: "release_date") required String? release_date,

  }) = _Downloads;

  factory Downloads.fromJson(Map<String, dynamic> json) =>
      _$DownloadsFromJson(json);
}
