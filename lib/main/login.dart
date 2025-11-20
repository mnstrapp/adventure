import 'dart:math';

import 'package:adventure/ui/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main/menu.dart';
import '../ui/scaffold.dart';
import '../theme.dart';
import '../main/auth_providers.dart';
import 'register.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isPasswordVisible = false;
  final formKey = GlobalKey<FormState>();

  void togglePasswordVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  String? validEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email is required';
    }
    final emailRegex = RegExp(
      r"^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$",
    );
    if (!emailRegex.hasMatch(email)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  String? validPassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  Future<void> login() async {
    if (formKey.currentState!.validate()) {
      final messenger = ScaffoldMessenger.of(context);
      final navigator = Navigator.of(context);
      final email = emailController.text;
      final password = passwordController.text;
      final (_, error) = await ref
          .read(sessionProvider.notifier)
          .login(email: email, password: password);
      if (error != null) {
        messenger.showSnackBar(
          SnackBar(content: Text(error)),
        );
        return;
      }
      navigator.pushReplacement(
        MaterialPageRoute(
          builder: (context) => const MainMenuScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);

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
          Center(
            child: Container(
              width: size.width > tabletBreakpoint
                  ? min(size.width * 0.5, 480)
                  : size.width,
              margin: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Login', style: theme.textTheme.displaySmall),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: emailController,
                              decoration: InputDecoration(
                                labelText: 'Email',
                              ),
                              validator: validEmail,
                            ),
                            TextFormField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                suffixIcon: IconButton(
                                  onPressed: togglePasswordVisibility,
                                  icon: Icon(
                                    isPasswordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                ),
                              ),
                              obscureText: !isPasswordVisible,
                              validator: validPassword,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton.icon(
                                    icon: const Icon(Icons.cancel),
                                    label: const Text('Cancel'),
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const MainMenuScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                  UiButton(
                                    text: 'Login',
                                    icon: Icons.login,
                                    onPressed: () async {
                                      if (formKey.currentState!.validate()) {
                                        await login();
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton.icon(
                          icon: const Icon(Icons.lock),
                          label: const Text('Forgot password?'),
                          style: TextButton.styleFrom(
                            foregroundColor:
                                theme.colorScheme.onPrimaryContainer,
                          ),
                          onPressed: () {
                            // TODO: Implement forgot password functionality
                          },
                        ),
                        UiButton.secondary(
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
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
