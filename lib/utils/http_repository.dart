import 'package:dio/dio.dart';

enum RequestType { get, post, delete }

class HttpRepository {
  Future<dynamic> callRequest(
      {required RequestType requestType,
      required String methodName,
      Map<String, dynamic> queryParameters = const {}}) async {
    String baseUrl = "https://helpera.app/";
    Response? response;

    Dio dioClient = Dio()
      ..options = BaseOptions(
          baseUrl: baseUrl,
          followRedirects: false,
          validateStatus: (status) {
            return true;
          });

    switch (requestType) {
      case RequestType.get:
        response = await dioClient.get(methodName,
            queryParameters: queryParameters,
            options: Options(contentType: Headers.jsonContentType));
        break;
      case RequestType.post:
        response = await dioClient.post(methodName,
            queryParameters: queryParameters,
            options: Options(contentType: Headers.jsonContentType),
            data: null); //TODO handle Data
        break;
      case RequestType.delete:
        response = await dioClient.delete(methodName,
            queryParameters: queryParameters,
            options: Options(contentType: Headers.jsonContentType),
            data: null); //TODO handle Data
        break;
    }

    return response.data;
  }
}
