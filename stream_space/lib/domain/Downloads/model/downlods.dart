import 'package:freezed_annotation/freezed_annotation.dart';
part 'downlods.freezed.dart';
part 'downlods.g.dart';

@freezed
class Downloads with _$Downloads {
  const factory Downloads({
    // ignore: invalid_annotation_target
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "backdrop_path") required String? backdroppath,
    @JsonKey(name: "title") required String? title,
  }) = _Downloads;

  factory Downloads.fromJson(Map<String, dynamic> json) =>
      _$DownloadsFromJson(json);
}
