import 'package:dio/dio.dart';
import 'package:flutter_github/network/api_address.dart';
import 'package:flutter_github/utils/log_util.dart';

import 'log_interceptor.dart';

/// @auter Created by tyy on 2022/1/4
/// desc   :
/// version:v1.0.0
///

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
    _dio = Dio(baseOptions)..interceptors.add(InterceptorLog());
  }

  get(api, {params, isShowLoading = true}) async {
    if (isShowLoading) {
      LogUtils.d("加载框");
    }
    Response response;
    response = await _dio.get(api, queryParameters: params);
    return response.data;
  }
}
