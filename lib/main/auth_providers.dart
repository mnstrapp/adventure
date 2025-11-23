import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../proto/session.pbgrpc.dart' as adventurers;
import '../models/session.dart';
import '../models/user.dart';
import '../utils/grpc.dart';
import '../utils/local_store.dart';

final sessionProvider = NotifierProvider<SessionNotifier, Session?>(() {
  return SessionNotifier();
});

class SessionNotifier extends Notifier<Session?> {
  Session? _session;

  SessionNotifier({Session? session}) : _session = session;

  @override
  Session? build() {
    return _session;
  }

  Future<(Session?, String?)> login({
    required String email,
    required String password,
  }) async {
    final client = adventurers.SessionServiceClient(createGrpcChannel());

    try {
      final response = await client.login(
        adventurers.LoginRequest(email: email, password: password),
      );

      final session = Session.fromGRPC(response.session);
      state = session;
      await LocalStore.setSession(session);
      _session = session;

      return (session, null);
    } catch (e) {
      debugPrint('Failed to login: $e');

      return (null, e.toString());
    }
  }

  Future<String?> logout() async {
    final client = adventurers.SessionServiceClient(createGrpcChannel());
    try {
      await client.logout(adventurers.LogoutRequest(token: state!.token));
      await LocalStore.clearSession();
      state = null;
      _session = null;
      return null;
    } catch (e) {
      debugPrint('Failed to logout: $e');
      return e.toString();
    }
  }

  Future<(bool, String?)> register({
    required String displayName,
    required String email,
    required String password,
  }) async {
    final client = adventurers.SessionServiceClient(createGrpcChannel());
    try {
      final response = await client.register(
        adventurers.RegisterRequest(
          displayName: displayName,
          email: email,
          password: password,
        ),
      );
      final success = response.success;
      return (success, null);
    } catch (e) {
      debugPrint('Failed to register: $e');
      return (false, e.toString());
    }
  }

  Future<(bool, String?)> verifyEmail({
    required String code,
  }) async {
    final client = adventurers.SessionServiceClient(createGrpcChannel());
    try {
      final response = await client.verifyEmail(
        adventurers.VerifyEmailRequest(code: code),
      );
      final success = response.success;
      return (success, null);
    } catch (e) {
      debugPrint('Failed to verify email: $e');
      return (false, e.toString());
    }
  }
}
