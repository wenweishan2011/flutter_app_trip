class User {
  final String icon;
  final String title;
  final String url;
  final String statusBarColor;
  final bool hideAppBar;

  User(this.icon, this.title, this.url, this.statusBarColor, this.hideAppBar);

  User.fromJson(Map<String, dynamic> json)
      : icon = json['icon'],
        title = json['title'],
        url = json['url'],
        statusBarColor = json['statusBarColor'],
        hideAppBar = json['hideAppBar'];

  Map<String, dynamic> toJson() => {
        'icon': icon,
        'title': title,
        'url': url,
        'statusBarColor': statusBarColor,
        'hideAppBar': hideAppBar
      };
}
