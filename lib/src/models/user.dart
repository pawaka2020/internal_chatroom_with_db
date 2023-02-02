import 'package:flutter/cupertino.dart';

//TODO: comment
//id = ?
//username = ?
//etc
//and then description of the constructor and toJson's purpose
class User {
  String get id => _id;
  String username;
  String photo_url;
  String _id;
  bool active;
  DateTime last_seen;

  User(
      this.username,
      this.photo_url,
      this._id,
      this.active,
      this.last_seen,);

  User placeholder = User('', '', '', false, DateTime(0, 0, 0, 0, 0, 0, 0, 0));
//   User({
//     required String username,
//     required String photourl,
//     required bool active,
//     required DateTime lastseen
// });
  toJson() => {
    'username':username,
    'photo_url':photo_url,
    '_id':_id,
    'active': active,
    'last_seen' : last_seen
  };

  //this function returns a User class
  // factory User.fromJson(Map<String, dynamic> json){
  //   // final user = User(
  //   //   username = json['username'],
  //   //   photo_url = json['photo_url'],
  //   //   _id = json['_id'],
  //   //   active = json['active'],
  //   //   last_seen = json['last_seen']
  //   // );
  //   final User user = User(
  //     username = json['username']
  //   );
  //   return user;
  // }
  factory User.fromJson(Map<String, dynamic> json){
    User user = User(
      json['username'],
      json['photo_url'],
      json['_id'],
      json['active'],
      json['last_seen']
    );
    return user;
  }
}