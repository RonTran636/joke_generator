import 'package:dio/dio.dart';

class ApiClient {
  late Dio client = Dio(
    BaseOptions(
      baseUrl: 'https://v2.jokeapi.dev/',
    ),
  );

  Future<Response<dynamic>> get(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) =>
      client.get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
}
