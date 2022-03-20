import 'package:dio/dio.dart';

class Service {
  late Dio _dio;
  late String _baseUrl;
  Map<String, dynamic>? _headers;

  Service() {
    _initOptions();
  }

  void _initOptions() {
    _baseUrl = 'https://countries-cities.p.rapidapi.com/location';
    _headers = {
      "x-rapidapi-host": "countries-cities.p.rapidapi.com",
      "x-rapidapi-key": "1b0d07f95fmsh38d7d7b090ddd02p1acf59jsn55c3af684330"
    };

    _dio = Dio(BaseOptions(baseUrl: _baseUrl, headers: _headers));
  }

  Future<Response> get(String path,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      return await _dio.get(path, queryParameters: queryParameters);
    } on DioError {
      rethrow;
    }
  }
}
