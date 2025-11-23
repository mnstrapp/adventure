import 'dart:math';

import 'package:adventure/ui/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main/login.dart';
import '../ui/scaffold.dart';
import '../theme.dart';
import '../main/auth_providers.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final displayNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final verifyCodeController = TextEditingController();

  final displayNameFocusNode = FocusNode();
  final verifyCodeFocusNode = FocusNode();

  bool isPasswordVisible = false;
  bool isVerifyCodeVisible = false;

  final formKey = GlobalKey<FormState>();

  void togglePasswordVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  String? validDisplayName(String? displayName) {
    if (displayName == null || displayName.isEmpty) {
      return 'Display name is required';
    }
    return null;
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
    if (confirmPasswordController.text != password) {
      return 'Passwords do not match';
    }
    return null;
  }

  String? validConfirmPassword(String? confirmPassword) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return 'Confirm password is required';
    }
    if (confirmPassword != passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  String? validVerifyCode(String? verifyCode) {
    if (verifyCode == null || verifyCode.isEmpty) {
      return 'Verify code is required';
    }
    return null;
  }

  Future<void> verifyCode() async {
    final messenger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);
    final verifyCode = verifyCodeController.text;
    final (user, error) = await ref
        .read(sessionProvider.notifier)
        .verifyEmail(code: verifyCode);
    if (error != null) {
      messenger.showSnackBar(
        SnackBar(content: Text(error.toString())),
      );
      return;
    }
    navigator.pushReplacement(
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  Future<void> register() async {
    if (formKey.currentState!.validate()) {
      final messenger = ScaffoldMessenger.of(context);
      final displayName = displayNameController.text;
      final email = emailController.text;
      final password = passwordController.text;
      final (success, error) = await ref
          .read(sessionProvider.notifier)
          .register(
            displayName: displayName,
            email: email,
            password: password,
          );
      if (error != null) {
        messenger.showSnackBar(
          SnackBar(content: Text(error.toString())),
        );
        return;
      }
      if (success) {
        setState(() {
          isVerifyCodeVisible = true;
          verifyCodeController.clear();
          verifyCodeFocusNode.requestFocus();
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    displayNameFocusNode.requestFocus();
  }

  @override
  void dispose() {
    displayNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    verifyCodeController.dispose();
    super.dispose();
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
                  if (!isVerifyCodeVisible) ...[
                    Text('Register', style: theme.textTheme.displaySmall),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Form(
                          key: formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: displayNameController,
                                focusNode: displayNameFocusNode,
                                decoration: InputDecoration(
                                  labelText: 'Display Name',
                                ),
                                validator: validDisplayName,
                                onEditingComplete: () {
                                  if (formKey.currentState!.validate()) {
                                    register();
                                  }
                                },
                              ),
                              TextFormField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                ),
                                validator: validEmail,
                                onEditingComplete: () {
                                  if (formKey.currentState!.validate()) {
                                    register();
                                  }
                                },
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
                                onEditingComplete: () {
                                  if (formKey.currentState!.validate()) {
                                    register();
                                  }
                                },
                              ),
                              TextFormField(
                                controller: confirmPasswordController,
                                decoration: InputDecoration(
                                  labelText: 'Confirm Password',
                                  suffixIcon: IconButton(
                                    onPressed: togglePasswordVisibility,
                                    icon: Icon(
                                      isPasswordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                    ),
                                  ),
                                ),
                                onEditingComplete: () {
                                  if (formKey.currentState!.validate()) {
                                    register();
                                  }
                                },
                                obscureText: !isPasswordVisible,
                                validator: validConfirmPassword,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: UiButton(
                                    text: 'Register',
                                    icon: Icons.person_add,
                                    onPressed: () async {
                                      if (formKey.currentState!.validate()) {
                                        await register();
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                  if (isVerifyCodeVisible) ...[
                    Text('Verify Code', style: theme.textTheme.displaySmall),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Form(
                              key: formKey,
                              child: Column(
                                children: [
                                  TextFormField(
                                    controller: verifyCodeController,
                                    focusNode: verifyCodeFocusNode,
                                    validator: validVerifyCode,
                                    onEditingComplete: () {
                                      if (formKey.currentState!.validate()) {
                                        verifyCode();
                                      }
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'Verify Code',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: UiButton(
                                  text: 'Verify Code',
                                  icon: Icons.check,
                                  onPressed: verifyCode,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
