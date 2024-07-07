import 'package:stream_space/core/string.dart';
import 'package:stream_space/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = '$kBaseUrl/trending/movie/day?api_key=$apiKey';
  static const search = '$kBaseUrl/search/movie?api_key=$apiKey';
  static const discovermovie = '$kBaseUrl/discover/movie?api_key=$apiKey';
  static const discovertv = '$kBaseUrl/discover/tv?api_key=$apiKey';
}
