class Users {
  String content;
  String title;
  String id;

  Users({
    this.content,
    this.title,
    this.id,
  });

  Users.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    title = json['title'];
    id = json['id'];
  }
}
