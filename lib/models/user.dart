import '../proto/user.pb.dart' as adventurers;

class User {
  final String id;
  final String email;
  final String displayName;

  User({
    required this.id,
    required this.email,
    required this.displayName,
  });

  factory User.fromGRPC(adventurers.User userProto) {
    return User(
      id: userProto.id,
      email: userProto.email,
      displayName: userProto.displayName,
    );
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      email: json['email'],
      displayName: json['displayName'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'displayName': displayName,
    };
  }
}
