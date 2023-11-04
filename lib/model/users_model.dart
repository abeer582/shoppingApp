class Users {
  String username;
  int id;
  Users({
    required this.username,
    required this.id,
  });

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        username: json["username"],
        id: json["id"],
      );
}
