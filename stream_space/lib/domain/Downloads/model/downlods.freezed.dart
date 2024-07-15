// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downlods.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Downloads _$DownloadsFromJson(Map<String, dynamic> json) {
  return _Downloads.fromJson(json);
}

/// @nodoc
mixin _$Downloads {
// ignore: invalid_annotation_target
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get backdroppath => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String? get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String? get release_date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadsCopyWith<Downloads> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsCopyWith<$Res> {
  factory $DownloadsCopyWith(Downloads value, $Res Function(Downloads) then) =
      _$DownloadsCopyWithImpl<$Res, Downloads>;
  @useResult
  $Res call(
      {@JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "backdrop_path") String? backdroppath,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "overview") String? overview,
      @JsonKey(name: "release_date") String? release_date});
}

/// @nodoc
class _$DownloadsCopyWithImpl<$Res, $Val extends Downloads>
    implements $DownloadsCopyWith<$Res> {
  _$DownloadsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
    Object? backdroppath = freezed,
    Object? title = freezed,
    Object? overview = freezed,
    Object? release_date = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdroppath: freezed == backdroppath
          ? _value.backdroppath
          : backdroppath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      release_date: freezed == release_date
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadsImplCopyWith<$Res>
    implements $DownloadsCopyWith<$Res> {
  factory _$$DownloadsImplCopyWith(
          _$DownloadsImpl value, $Res Function(_$DownloadsImpl) then) =
      __$$DownloadsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "backdrop_path") String? backdroppath,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "overview") String? overview,
      @JsonKey(name: "release_date") String? release_date});
}

/// @nodoc
class __$$DownloadsImplCopyWithImpl<$Res>
    extends _$DownloadsCopyWithImpl<$Res, _$DownloadsImpl>
    implements _$$DownloadsImplCopyWith<$Res> {
  __$$DownloadsImplCopyWithImpl(
      _$DownloadsImpl _value, $Res Function(_$DownloadsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
    Object? backdroppath = freezed,
    Object? title = freezed,
    Object? overview = freezed,
    Object? release_date = freezed,
  }) {
    return _then(_$DownloadsImpl(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdroppath: freezed == backdroppath
          ? _value.backdroppath
          : backdroppath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      release_date: freezed == release_date
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DownloadsImpl implements _Downloads {
  const _$DownloadsImpl(
      {@JsonKey(name: "poster_path") required this.posterPath,
      @JsonKey(name: "backdrop_path") required this.backdroppath,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "overview") required this.overview,
      @JsonKey(name: "release_date") required this.release_date});

  factory _$DownloadsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadsImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "backdrop_path")
  final String? backdroppath;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "overview")
  final String? overview;
  @override
  @JsonKey(name: "release_date")
  final String? release_date;

  @override
  String toString() {
    return 'Downloads(posterPath: $posterPath, backdroppath: $backdroppath, title: $title, overview: $overview, release_date: $release_date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadsImpl &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.backdroppath, backdroppath) ||
                other.backdroppath == backdroppath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.release_date, release_date) ||
                other.release_date == release_date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, posterPath, backdroppath, title, overview, release_date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadsImplCopyWith<_$DownloadsImpl> get copyWith =>
      __$$DownloadsImplCopyWithImpl<_$DownloadsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadsImplToJson(
      this,
    );
  }
}

abstract class _Downloads implements Downloads {
  const factory _Downloads(
          {@JsonKey(name: "poster_path") required final String? posterPath,
          @JsonKey(name: "backdrop_path") required final String? backdroppath,
          @JsonKey(name: "title") required final String? title,
          @JsonKey(name: "overview") required final String? overview,
          @JsonKey(name: "release_date") required final String? release_date}) =
      _$DownloadsImpl;

  factory _Downloads.fromJson(Map<String, dynamic> json) =
      _$DownloadsImpl.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "backdrop_path")
  String? get backdroppath;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "overview")
  String? get overview;
  @override
  @JsonKey(name: "release_date")
  String? get release_date;
  @override
  @JsonKey(ignore: true)
  _$$DownloadsImplCopyWith<_$DownloadsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
