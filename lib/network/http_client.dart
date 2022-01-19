import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'api_address.dart';
import 'log_interceptor.dart';
import 'token_interceptor.dart';

/// @auter Created by tyy on 2022/1/4
/// desc   :
/// version:v1.0.0
///

typedef onSuccess<T> = Function(T data);
typedef onError<String> = Function(String mesage);

class HttpClient {
  static const _connecTimeout = 5000;
  static const _receiveTimeout = 5000;
  static late Dio _dio;
  static final HttpClient _httpClient = HttpClient._();

  factory HttpClient() => _httpClient;

  static HttpClient get instanc => HttpClient();

  HttpClient._() {
    BaseOptions baseOptions = BaseOptions(
        connectTimeout: _connecTimeout,
        receiveTimeout: _receiveTimeout,
        baseUrl: ApiAddress.apiBaseUrl);
    _dio = Dio(baseOptions)
      // token拦截器必须放在第一个
      ..interceptors.add(TokenInterceptor())
      ..interceptors.add(InterceptorLog());
  }

  requestNetwork(url,
      {Map<String, dynamic>? params,
      onSuccess? onSuccessCall,
      onError<String>? onErrorCall,
      bool isShowLoading = true,
      Method method = Method.get,
      Options? options,
      String baseUrl = "",
      bool isGetToken = false}) async {
    Response response;
    if (isShowLoading) {
      EasyLoading.show();
    }
    try {
      //动态设置baseUrl
      if (baseUrl.isEmpty) {
        _dio.options.baseUrl = ApiAddress.apiBaseUrl;
      } else {
        _dio.options.baseUrl = baseUrl;
      }
      //动态移除token拦截器，所以token拦截器必须放在第一个
      if (isGetToken) {
        _dio.interceptors.removeAt(0);
      }

      response = await _dio.request(url,
          queryParameters: params,
          options: _checkOptions(method.value, options));
      EasyLoading.dismiss();
      if (response.statusCode == 200 && response.data != null) {
        onSuccessCall?.call(response.data);
      } else {
        onErrorCall?.call("数据异常");
      }
    } on DioError catch (e) {
      EasyLoading.dismiss();
      onErrorCall?.call(e.message);
    }
  }

  Options _checkOptions(String method, Options? options) {
    options ??= Options();
    options.method = method;
    // options.headers=requestParams;
    return options;
  }
}

enum Method { get, post, put, patch, delete, head }

extension MethodExtension on Method {
  String get value => ['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'HEAD'][index];
}
