import 'package:dio/dio.dart';

class ApiClient {
  late Dio client = Dio(
    BaseOptions(
      baseUrl: '',
    ),
  );
}
