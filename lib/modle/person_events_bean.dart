/// id : "19844146623"
/// type : "PushEvent"
/// actor : {"id":16182460,"login":"sky-918","display_login":"sky-918","gravatar_id":"","url":"https://api.github.com/users/sky-918","avatar_url":"https://avatars.githubusercontent.com/u/16182460?"}
/// repo : {"id":442447499,"name":"sky-918/flutter_github","url":"https://api.github.com/repos/sky-918/flutter_github"}
/// payload : {"push_id":8893415486,"size":6,"distinct_size":6,"ref":"refs/heads/main","head":"b1466a442b78eab1f9f433b1ca311410d28344dd","before":"7ce38ec642a17c68bba1778864e15fcd5f81c326","commits":[{"sha":"bcad90b6743dde25187eff09ddc715f913acac9c","author":{"email":"1004994051@qq.com","name":"田阳阳"},"message":"fix：暂时这样改，存在null的情况","distinct":true,"url":"https://api.github.com/repos/sky-918/flutter_github/commits/bcad90b6743dde25187eff09ddc715f913acac9c"},{"sha":"7aba306162fc71f98555ea2d8b1571900cbfd124","author":{"email":"1004994051@qq.com","name":"田阳阳"},"message":"feat:个人中心tab整理","distinct":true,"url":"https://api.github.com/repos/sky-918/flutter_github/commits/7aba306162fc71f98555ea2d8b1571900cbfd124"},{"sha":"528530fee22594d841d57232a30705fd13023354","author":{"email":"1004994051@qq.com","name":"田阳阳"},"message":"feat:个人中心个人动态添加","distinct":true,"url":"https://api.github.com/repos/sky-918/flutter_github/commits/528530fee22594d841d57232a30705fd13023354"},{"sha":"c1872567b041e6c72ff5d62685daad8ec839f5cb","author":{"email":"1004994051@qq.com","name":"田阳阳"},"message":"feat:修改字体大小","distinct":true,"url":"https://api.github.com/repos/sky-918/flutter_github/commits/c1872567b041e6c72ff5d62685daad8ec839f5cb"},{"sha":"912d3847a55823bb64a0494beb78b1e1bc1c0be3","author":{"email":"1004994051@qq.com","name":"田阳阳"},"message":"refactor:修改个人中心头像大小","distinct":true,"url":"https://api.github.com/repos/sky-918/flutter_github/commits/912d3847a55823bb64a0494beb78b1e1bc1c0be3"},{"sha":"b1466a442b78eab1f9f433b1ca311410d28344dd","author":{"email":"1004994051@qq.com","name":"田阳阳"},"message":"refactor:修改个人中心个人动态尺寸处理","distinct":true,"url":"https://api.github.com/repos/sky-918/flutter_github/commits/b1466a442b78eab1f9f433b1ca311410d28344dd"}]}
/// public : true
/// created_at : "2022-01-21T02:50:11Z"
class PersonEventsBean {
  PersonEventsBean({
      String? id, 
      String? type, 
      Actor? actor, 
      Repo? repo, 
      Payload? payload, 
      bool? public, 
      String? createdAt,}){
    _id = id;
    _type = type;
    _actor = actor;
    _repo = repo;
    _payload = payload;
    _public = public;
    _createdAt = createdAt;
}
  static final empty = PersonEventsBean();
  PersonEventsBean.fromJson(dynamic json) {
    _id = json['id'];
    _type = json['type'];
    _actor = json['actor'] != null ? Actor.fromJson(json['actor']) : null;
    _repo = json['repo'] != null ? Repo.fromJson(json['repo']) : null;
    _payload = json['payload'] != null ? Payload.fromJson(json['payload']) : null;
    _public = json['public'];
    _createdAt = json['created_at'];
  }
  String? _id;
  String? _type;
  Actor? _actor;
  Repo? _repo;
  Payload? _payload;
  bool? _public;
  String? _createdAt;

  String? get id => _id;
  String? get type => _type;
  Actor? get actor => _actor;
  Repo? get repo => _repo;
  Payload? get payload => _payload;
  bool? get public => _public;
  String? get createdAt => _createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['type'] = _type;
    if (_actor != null) {
      map['actor'] = _actor?.toJson();
    }
    if (_repo != null) {
      map['repo'] = _repo?.toJson();
    }
    if (_payload != null) {
      map['payload'] = _payload?.toJson();
    }
    map['public'] = _public;
    map['created_at'] = _createdAt;
    return map;
  }

}

/// push_id : 8893415486
/// size : 6
/// distinct_size : 6
/// ref : "refs/heads/main"
/// head : "b1466a442b78eab1f9f433b1ca311410d28344dd"
/// before : "7ce38ec642a17c68bba1778864e15fcd5f81c326"
/// commits : [{"sha":"bcad90b6743dde25187eff09ddc715f913acac9c","author":{"email":"1004994051@qq.com","name":"田阳阳"},"message":"fix：暂时这样改，存在null的情况","distinct":true,"url":"https://api.github.com/repos/sky-918/flutter_github/commits/bcad90b6743dde25187eff09ddc715f913acac9c"},{"sha":"7aba306162fc71f98555ea2d8b1571900cbfd124","author":{"email":"1004994051@qq.com","name":"田阳阳"},"message":"feat:个人中心tab整理","distinct":true,"url":"https://api.github.com/repos/sky-918/flutter_github/commits/7aba306162fc71f98555ea2d8b1571900cbfd124"},{"sha":"528530fee22594d841d57232a30705fd13023354","author":{"email":"1004994051@qq.com","name":"田阳阳"},"message":"feat:个人中心个人动态添加","distinct":true,"url":"https://api.github.com/repos/sky-918/flutter_github/commits/528530fee22594d841d57232a30705fd13023354"},{"sha":"c1872567b041e6c72ff5d62685daad8ec839f5cb","author":{"email":"1004994051@qq.com","name":"田阳阳"},"message":"feat:修改字体大小","distinct":true,"url":"https://api.github.com/repos/sky-918/flutter_github/commits/c1872567b041e6c72ff5d62685daad8ec839f5cb"},{"sha":"912d3847a55823bb64a0494beb78b1e1bc1c0be3","author":{"email":"1004994051@qq.com","name":"田阳阳"},"message":"refactor:修改个人中心头像大小","distinct":true,"url":"https://api.github.com/repos/sky-918/flutter_github/commits/912d3847a55823bb64a0494beb78b1e1bc1c0be3"},{"sha":"b1466a442b78eab1f9f433b1ca311410d28344dd","author":{"email":"1004994051@qq.com","name":"田阳阳"},"message":"refactor:修改个人中心个人动态尺寸处理","distinct":true,"url":"https://api.github.com/repos/sky-918/flutter_github/commits/b1466a442b78eab1f9f433b1ca311410d28344dd"}]

class Payload {
  Payload({
      int? pushId, 
      int? size, 
      int? distinctSize, 
      String? ref, 
      String? head, 
      String? before, 
      List<Commits>? commits,}){
    _pushId = pushId;
    _size = size;
    _distinctSize = distinctSize;
    _ref = ref;
    _head = head;
    _before = before;
    _commits = commits;
}

  Payload.fromJson(dynamic json) {
    _pushId = json['push_id'];
    _size = json['size'];
    _distinctSize = json['distinct_size'];
    _ref = json['ref'];
    _head = json['head'];
    _before = json['before'];
    if (json['commits'] != null) {
      _commits = [];
      json['commits'].forEach((v) {
        _commits?.add(Commits.fromJson(v));
      });
    }
  }
  int? _pushId;
  int? _size;
  int? _distinctSize;
  String? _ref;
  String? _head;
  String? _before;
  List<Commits>? _commits;

  int? get pushId => _pushId;
  int? get size => _size;
  int? get distinctSize => _distinctSize;
  String? get ref => _ref;
  String? get head => _head;
  String? get before => _before;
  List<Commits>? get commits => _commits;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['push_id'] = _pushId;
    map['size'] = _size;
    map['distinct_size'] = _distinctSize;
    map['ref'] = _ref;
    map['head'] = _head;
    map['before'] = _before;
    if (_commits != null) {
      map['commits'] = _commits?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// sha : "bcad90b6743dde25187eff09ddc715f913acac9c"
/// author : {"email":"1004994051@qq.com","name":"田阳阳"}
/// message : "fix：暂时这样改，存在null的情况"
/// distinct : true
/// url : "https://api.github.com/repos/sky-918/flutter_github/commits/bcad90b6743dde25187eff09ddc715f913acac9c"

class Commits {
  Commits({
      String? sha, 
      Author? author, 
      String? message, 
      bool? distinct, 
      String? url,}){
    _sha = sha;
    _author = author;
    _message = message;
    _distinct = distinct;
    _url = url;
}

  Commits.fromJson(dynamic json) {
    _sha = json['sha'];
    _author = json['author'] != null ? Author.fromJson(json['author']) : null;
    _message = json['message'];
    _distinct = json['distinct'];
    _url = json['url'];
  }
  String? _sha;
  Author? _author;
  String? _message;
  bool? _distinct;
  String? _url;

  String? get sha => _sha;
  Author? get author => _author;
  String? get message => _message;
  bool? get distinct => _distinct;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sha'] = _sha;
    if (_author != null) {
      map['author'] = _author?.toJson();
    }
    map['message'] = _message;
    map['distinct'] = _distinct;
    map['url'] = _url;
    return map;
  }

}

/// email : "1004994051@qq.com"
/// name : "田阳阳"

class Author {
  Author({
      String? email, 
      String? name,}){
    _email = email;
    _name = name;
}

  Author.fromJson(dynamic json) {
    _email = json['email'];
    _name = json['name'];
  }
  String? _email;
  String? _name;

  String? get email => _email;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = _email;
    map['name'] = _name;
    return map;
  }

}

/// id : 442447499
/// name : "sky-918/flutter_github"
/// url : "https://api.github.com/repos/sky-918/flutter_github"

class Repo {
  Repo({
      int? id,
      String? name, 
      String? url,}){
    _id = id;
    _name = name;
    _url = url;
}

  Repo.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _url = json['url'];
  }
  int? _id;
  String? _name;
  String? _url;

  int? get id => _id;
  String? get name => _name;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }

}

/// id : 16182460
/// login : "sky-918"
/// display_login : "sky-918"
/// gravatar_id : ""
/// url : "https://api.github.com/users/sky-918"
/// avatar_url : "https://avatars.githubusercontent.com/u/16182460?"

class Actor {
  Actor({
      int? id, 
      String? login, 
      String? displayLogin, 
      String? gravatarId, 
      String? url, 
      String? avatarUrl,}){
    _id = id;
    _login = login;
    _displayLogin = displayLogin;
    _gravatarId = gravatarId;
    _url = url;
    _avatarUrl = avatarUrl;
}

  Actor.fromJson(dynamic json) {
    _id = json['id'];
    _login = json['login'];
    _displayLogin = json['display_login'];
    _gravatarId = json['gravatar_id'];
    _url = json['url'];
    _avatarUrl = json['avatar_url'];
  }
  int? _id;
  String? _login;
  String? _displayLogin;
  String? _gravatarId;
  String? _url;
  String? _avatarUrl;

  int? get id => _id;
  String? get login => _login;
  String? get displayLogin => _displayLogin;
  String? get gravatarId => _gravatarId;
  String? get url => _url;
  String? get avatarUrl => _avatarUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['login'] = _login;
    map['display_login'] = _displayLogin;
    map['gravatar_id'] = _gravatarId;
    map['url'] = _url;
    map['avatar_url'] = _avatarUrl;
    return map;
  }

}