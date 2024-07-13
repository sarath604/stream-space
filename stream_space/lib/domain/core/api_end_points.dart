import 'package:stream_space/core/string.dart';
import 'package:stream_space/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = '$kBaseUrl/trending/movie/day?api_key=$apiKey';
  static const search = '$kBaseUrl/search/movie?api_key=$apiKey';
  static const discovermovie = '$kBaseUrl/movie/upcoming?api_key=$apiKey';
  static const discovertv = '$kBaseUrl/trending/tv/day?api_key=$apiKey';
  static const popularpeople = '$kBaseUrl/person/popular?api_key=$apiKey';
}
