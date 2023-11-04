import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init(){
    dio = Dio(
        BaseOptions(
            baseUrl: 'https://jsonplaceholder.typicode.com/',
            receiveDataWhenStatusError: true
        )
    );
  }
  static Future<Response> getData({
    required String url,
    String? token,
    Map<String , dynamic>? params,

  }) async {
    dio.options.headers = {
      'Accept':'*/*',
      "Content-Type":'application/json',
      'Authorization': 'Bearer $token',
    };
    return await dio.get(
        url,
        options: Options(
          responseType: ResponseType.json,
        ),
        queryParameters: params
    );
  }
  static Future<Response> deleteData({
    required String url,
    String? token,
    //Map<String , dynamic>? params,
  }) async {
    dio.options.headers = {
      'Authorization': 'Bearer $token',
    };
    return await dio.delete(
      url,
      //  queryParameters: params
    );
  }



  }
