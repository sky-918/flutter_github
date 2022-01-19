import 'package:dio/dio.dart';
import 'package:flutter_github/res/constant_data.dart';
import 'package:flutter_github/utils/log_util.dart';
import 'package:flutter_github/utils/shared_preferences_util.dart';
import 'package:oktoast/oktoast.dart';

/// @auter Created by tyy on 2022/1/19
/// desc   :token拦截器
/// version:v1.0.0
///
class TokenInterceptor extends QueuedInterceptorsWrapper {
  // Map<String, String> _requestParams = {
  //   "client_id": GitConfig.CLIENT_ID,
  //   "client_secret": GitConfig.CLIENT_SECRET
  // };

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    String? token =
        await SharedPreferencesUtil.getPreference(AppConstant.tokenKey, " ");
    LogUtils.d("token is .......$token");
    if ((token ?? "").isNotEmpty) {
      options.headers["Authorization"] = "token $token";
    } else {
      LogUtils.d("token is .......null");
      showToast("去登录");
    }

    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    LogUtils.d(
        "Token出现错误${err.type}   ${err.response?.statusCode}      ${err.message}");
    showToast("去登录，试试");
    super.onError(err, handler);
  }
}
