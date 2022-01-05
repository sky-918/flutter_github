/// @auter Created by tyy on 2022/1/4
/// desc   :网络接口错误编码
/// version:v1.0.0
///
class ErrorCode {
  static const SUCCESS = 200;

  static errorHandeMessage(code, message, isShow) {
    if (isShow) {
      return message;
    }
  }
}
