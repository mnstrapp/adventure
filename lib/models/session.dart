import '../proto/session.pb.dart' as adventurers;
import 'user.dart';

class Session {
  final String id;
  final User user;
  final String token;
  final String expiresAt;

  Session({
    required this.id,
    required this.user,
    required this.token,
    required this.expiresAt,
  });

  factory Session.fromGRPC(adventurers.Session sessionProto) {
    return Session(
      id: sessionProto.id,
      user: User.fromGRPC(sessionProto.user),
      token: sessionProto.token,
      expiresAt: sessionProto.expiresAt,
    );
  }

  factory Session.fromJson(Map<String, dynamic> json) {
    return Session(
      id: json['id'],
      user: User.fromJson(json['user']),
      token: json['token'],
      expiresAt: json['expiresAt'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user': user.toJson(),
      'token': token,
      'expiresAt': expiresAt,
    };
  }
}
