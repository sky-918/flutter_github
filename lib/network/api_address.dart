import 'package:flutter_github/config/git_config.dart';

/// @auter Created by tyy on 2022/1/4
/// desc   :
/// version:v1.0.0

class ApiAddress {
  static const apiBaseUrl = "https://api.github.com/";
  static const loginUrl = "users/sky-918";
  static const authorize = "https://github.com/login/oauth/authorize?client_id"
      "=${GitConfig.CLIENT_ID}&state=app&"
      "scope=user,repo,gist,notifications,read:org,workflow&"
      "redirect_uri=tyy://authed";

//获得token
  static const tokenBase = "https://github.com/";
  static const tokeUrl = "login/oauth/access_token";

//个人中心 活动列表
  static getEvent(String userName,{int page=1,int pageSize=10}) {
    return "users/$userName/events?page=$page&per_page=$pageSize";

  }

//个人中心 活动动态图
  static getEventImage(String userName, {String color = ""}) {
    return "https://ghchart.rshah.org/$color/$userName";
  }
}
