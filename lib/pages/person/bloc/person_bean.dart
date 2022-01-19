/// login : "sky-918"
/// id : 16182460
/// node_id : "MDQ6VXNlcjE2MTgyNDYw"
/// avatar_url : "https://avatars.githubusercontent.com/u/16182460?v=4"
/// gravatar_id : ""
/// url : "https://api.github.com/users/sky-918"
/// html_url : "https://github.com/sky-918"
/// followers_url : "https://api.github.com/users/sky-918/followers"
/// following_url : "https://api.github.com/users/sky-918/following{/other_user}"
/// gists_url : "https://api.github.com/users/sky-918/gists{/gist_id}"
/// starred_url : "https://api.github.com/users/sky-918/starred{/owner}{/repo}"
/// subscriptions_url : "https://api.github.com/users/sky-918/subscriptions"
/// organizations_url : "https://api.github.com/users/sky-918/orgs"
/// repos_url : "https://api.github.com/users/sky-918/repos"
/// events_url : "https://api.github.com/users/sky-918/events{/privacy}"
/// received_events_url : "https://api.github.com/users/sky-918/received_events"
/// type : "User"
/// site_admin : false
/// name : "sky-9"
/// company : null
/// blog : ""
/// location : null
/// email : "1004994051@qq.com"
/// hireable : null
/// bio : "致良知；\r\n知行合一；\r\n圣人之道，吾性自足。\r\nhahah\r\nhahahha\r\nhahaha\r\n"
/// twitter_username : null
/// public_repos : 10
/// public_gists : 0
/// followers : 1
/// following : 0
/// created_at : "2015-12-07T01:36:36Z"
/// updated_at : "2022-01-19T09:11:28Z"
/// private_gists : 0
/// total_private_repos : 1
/// owned_private_repos : 1
/// disk_usage : 91034
/// collaborators : 0
/// two_factor_authentication : false
/// plan : {"name":"free","space":976562499,"collaborators":0,"private_repos":10000}

class PersonBean {
  PersonBean({
      String? login, 
      int? id, 
      String? nodeId, 
      String? avatarUrl, 
      String? gravatarId, 
      String? url, 
      String? htmlUrl, 
      String? followersUrl, 
      String? followingUrl, 
      String? gistsUrl, 
      String? starredUrl, 
      String? subscriptionsUrl, 
      String? organizationsUrl, 
      String? reposUrl, 
      String? eventsUrl, 
      String? receivedEventsUrl, 
      String? type, 
      bool? siteAdmin, 
      String? name, 
      dynamic company, 
      String? blog, 
      dynamic location, 
      String? email, 
      dynamic hireable, 
      String? bio, 
      dynamic twitterUsername, 
      int? publicRepos, 
      int? publicGists, 
      int? followers, 
      int? following, 
      String? createdAt, 
      String? updatedAt, 
      int? privateGists, 
      int? totalPrivateRepos, 
      int? ownedPrivateRepos, 
      int? diskUsage, 
      int? collaborators, 
      bool? twoFactorAuthentication, 
      Plan? plan,}){
    _login = login;
    _id = id;
    _nodeId = nodeId;
    _avatarUrl = avatarUrl;
    _gravatarId = gravatarId;
    _url = url;
    _htmlUrl = htmlUrl;
    _followersUrl = followersUrl;
    _followingUrl = followingUrl;
    _gistsUrl = gistsUrl;
    _starredUrl = starredUrl;
    _subscriptionsUrl = subscriptionsUrl;
    _organizationsUrl = organizationsUrl;
    _reposUrl = reposUrl;
    _eventsUrl = eventsUrl;
    _receivedEventsUrl = receivedEventsUrl;
    _type = type;
    _siteAdmin = siteAdmin;
    _name = name;
    _company = company;
    _blog = blog;
    _location = location;
    _email = email;
    _hireable = hireable;
    _bio = bio;
    _twitterUsername = twitterUsername;
    _publicRepos = publicRepos;
    _publicGists = publicGists;
    _followers = followers;
    _following = following;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _privateGists = privateGists;
    _totalPrivateRepos = totalPrivateRepos;
    _ownedPrivateRepos = ownedPrivateRepos;
    _diskUsage = diskUsage;
    _collaborators = collaborators;
    _twoFactorAuthentication = twoFactorAuthentication;
    _plan = plan;
}
  static final empty = PersonBean();
  PersonBean.fromJson(dynamic json) {
    _login = json['login'];
    _id = json['id'];
    _nodeId = json['node_id'];
    _avatarUrl = json['avatar_url'];
    _gravatarId = json['gravatar_id'];
    _url = json['url'];
    _htmlUrl = json['html_url'];
    _followersUrl = json['followers_url'];
    _followingUrl = json['following_url'];
    _gistsUrl = json['gists_url'];
    _starredUrl = json['starred_url'];
    _subscriptionsUrl = json['subscriptions_url'];
    _organizationsUrl = json['organizations_url'];
    _reposUrl = json['repos_url'];
    _eventsUrl = json['events_url'];
    _receivedEventsUrl = json['received_events_url'];
    _type = json['type'];
    _siteAdmin = json['site_admin'];
    _name = json['name'];
    _company = json['company'];
    _blog = json['blog'];
    _location = json['location'];
    _email = json['email'];
    _hireable = json['hireable'];
    _bio = json['bio'];
    _twitterUsername = json['twitter_username'];
    _publicRepos = json['public_repos'];
    _publicGists = json['public_gists'];
    _followers = json['followers'];
    _following = json['following'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _privateGists = json['private_gists'];
    _totalPrivateRepos = json['total_private_repos'];
    _ownedPrivateRepos = json['owned_private_repos'];
    _diskUsage = json['disk_usage'];
    _collaborators = json['collaborators'];
    _twoFactorAuthentication = json['two_factor_authentication'];
    _plan = json['plan'] != null ? Plan.fromJson(json['plan']) : null;
  }
  String? _login;
  int? _id;
  String? _nodeId;
  String? _avatarUrl;
  String? _gravatarId;
  String? _url;
  String? _htmlUrl;
  String? _followersUrl;
  String? _followingUrl;
  String? _gistsUrl;
  String? _starredUrl;
  String? _subscriptionsUrl;
  String? _organizationsUrl;
  String? _reposUrl;
  String? _eventsUrl;
  String? _receivedEventsUrl;
  String? _type;
  bool? _siteAdmin;
  String? _name;
  dynamic _company;
  String? _blog;
  dynamic _location;
  String? _email;
  dynamic _hireable;
  String? _bio;
  dynamic _twitterUsername;
  int? _publicRepos;
  int? _publicGists;
  int? _followers;
  int? _following;
  String? _createdAt;
  String? _updatedAt;
  int? _privateGists;
  int? _totalPrivateRepos;
  int? _ownedPrivateRepos;
  int? _diskUsage;
  int? _collaborators;
  bool? _twoFactorAuthentication;
  Plan? _plan;

  String? get login => _login;
  int? get id => _id;
  String? get nodeId => _nodeId;
  String? get avatarUrl => _avatarUrl;
  String? get gravatarId => _gravatarId;
  String? get url => _url;
  String? get htmlUrl => _htmlUrl;
  String? get followersUrl => _followersUrl;
  String? get followingUrl => _followingUrl;
  String? get gistsUrl => _gistsUrl;
  String? get starredUrl => _starredUrl;
  String? get subscriptionsUrl => _subscriptionsUrl;
  String? get organizationsUrl => _organizationsUrl;
  String? get reposUrl => _reposUrl;
  String? get eventsUrl => _eventsUrl;
  String? get receivedEventsUrl => _receivedEventsUrl;
  String? get type => _type;
  bool? get siteAdmin => _siteAdmin;
  String? get name => _name;
  dynamic get company => _company;
  String? get blog => _blog;
  dynamic get location => _location;
  String? get email => _email;
  dynamic get hireable => _hireable;
  String? get bio => _bio;
  dynamic get twitterUsername => _twitterUsername;
  int? get publicRepos => _publicRepos;
  int? get publicGists => _publicGists;
  int? get followers => _followers;
  int? get following => _following;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  int? get privateGists => _privateGists;
  int? get totalPrivateRepos => _totalPrivateRepos;
  int? get ownedPrivateRepos => _ownedPrivateRepos;
  int? get diskUsage => _diskUsage;
  int? get collaborators => _collaborators;
  bool? get twoFactorAuthentication => _twoFactorAuthentication;
  Plan? get plan => _plan;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['login'] = _login;
    map['id'] = _id;
    map['node_id'] = _nodeId;
    map['avatar_url'] = _avatarUrl;
    map['gravatar_id'] = _gravatarId;
    map['url'] = _url;
    map['html_url'] = _htmlUrl;
    map['followers_url'] = _followersUrl;
    map['following_url'] = _followingUrl;
    map['gists_url'] = _gistsUrl;
    map['starred_url'] = _starredUrl;
    map['subscriptions_url'] = _subscriptionsUrl;
    map['organizations_url'] = _organizationsUrl;
    map['repos_url'] = _reposUrl;
    map['events_url'] = _eventsUrl;
    map['received_events_url'] = _receivedEventsUrl;
    map['type'] = _type;
    map['site_admin'] = _siteAdmin;
    map['name'] = _name;
    map['company'] = _company;
    map['blog'] = _blog;
    map['location'] = _location;
    map['email'] = _email;
    map['hireable'] = _hireable;
    map['bio'] = _bio;
    map['twitter_username'] = _twitterUsername;
    map['public_repos'] = _publicRepos;
    map['public_gists'] = _publicGists;
    map['followers'] = _followers;
    map['following'] = _following;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['private_gists'] = _privateGists;
    map['total_private_repos'] = _totalPrivateRepos;
    map['owned_private_repos'] = _ownedPrivateRepos;
    map['disk_usage'] = _diskUsage;
    map['collaborators'] = _collaborators;
    map['two_factor_authentication'] = _twoFactorAuthentication;
    if (_plan != null) {
      map['plan'] = _plan?.toJson();
    }
    return map;
  }

}

/// name : "free"
/// space : 976562499
/// collaborators : 0
/// private_repos : 10000

class Plan {
  Plan({
      String? name, 
      int? space, 
      int? collaborators, 
      int? privateRepos,}){
    _name = name;
    _space = space;
    _collaborators = collaborators;
    _privateRepos = privateRepos;
}

  Plan.fromJson(dynamic json) {
    _name = json['name'];
    _space = json['space'];
    _collaborators = json['collaborators'];
    _privateRepos = json['private_repos'];
  }
  String? _name;
  int? _space;
  int? _collaborators;
  int? _privateRepos;

  String? get name => _name;
  int? get space => _space;
  int? get collaborators => _collaborators;
  int? get privateRepos => _privateRepos;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['space'] = _space;
    map['collaborators'] = _collaborators;
    map['private_repos'] = _privateRepos;
    return map;
  }

}