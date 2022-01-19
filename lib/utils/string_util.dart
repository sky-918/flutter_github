/// @auter Created by tyy on 2022/1/19
/// desc   :字符串工具包
/// version:v1.0.0
///
///
///

/// 类似kotlin的拓展函数
extension DealNull on String? {
  onDealNull({String value = ""}) {
    return this ?? value;
  }
}
