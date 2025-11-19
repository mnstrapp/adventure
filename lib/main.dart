import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'main/auth_providers.dart';
import 'utils/local_store.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final session = await LocalStore.getSession();

  runApp(
    ProviderScope(
      overrides: [
        sessionProvider.overrideWith(() => SessionNotifier(session: session)),
      ],
      child: App(),
    ),
  );
}
