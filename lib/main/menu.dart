import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../ui/scaffold.dart';
import '../ui/button.dart';
import '../main/login.dart';
import '../main/auth_providers.dart';
import 'register.dart';

class MainMenuScreen extends ConsumerWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    final session = ref.watch(sessionProvider);

    return UiScaffold(
      child: Stack(
        children: [
          Positioned(
            top: 16,
            left: 0,
            right: 0,
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'MNSTR',
                      style: theme.textTheme.displayLarge?.copyWith(
                        fontSize: size.width * 0.15,
                        color: theme.colorScheme.primaryContainer,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Adventure',
                      style: theme.textTheme.displayLarge?.copyWith(
                        fontSize: size.width * 0.07,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/logo.png',
                width: 256,
                height: 256,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 8,
              children: [
                if (session == null) ...[
                  UiButton(
                    text: 'Login',
                    icon: Icons.login,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                  ),
                  UiButton(
                    text: 'Register',
                    icon: Icons.person_add,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ),
                      );
                    },
                  ),
                ],
                if (session != null)
                  UiButton(
                    text: 'Logout',
                    icon: Icons.logout,
                    onPressed: () async {
                      await ref.read(sessionProvider.notifier).logout();
                    },
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
