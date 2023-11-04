// import 'dart:convert';
// import 'package:equatable/equatable.dart';
// Data dataFromJson(String str) => Data.fromJson(json.decode(str));
// class Data extends Equatable {
//
//   final int id;
//   final String username;
//
//
//    Data({
//     required this.id,
//     required this.username,
//   });
//
//   Data copyWith({
//     int? id,
//     String? name,
//     String? username,
//     String? email,
//     String? phone,
//     String? website,
//   }) =>
//       Data(
//         id: id ?? this.id,
//         username: username ?? this.username,
//
//       );
//
//   factory Data.fromJson(Map<String, dynamic> json) => Data(
//     id: json["id"]??-1,
//     username: json["username"]??'',
//
//
//   );
//   @override
//   List<Object?> get props {
//     return [
//       id,
//       username,
//
//     ];
//   }
// }
//
//
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