import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/session.dart';

enum LocalStoreKey {
  session,
}

class LocalStore {
  static Future<void> setSession(Session session) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(LocalStoreKey.session.name, jsonEncode(session.toJson()));
  }

  static Future<Session?> getSession() async {
    final prefs = await SharedPreferences.getInstance();
    final session = prefs.getString(LocalStoreKey.session.name);
    return session != null ? Session.fromJson(jsonDecode(session)) : null;
  }
}
