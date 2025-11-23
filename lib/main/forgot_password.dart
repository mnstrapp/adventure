import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../theme.dart';
import '../ui/button.dart';
import '../ui/scaffold.dart';
import 'auth_providers.dart';
import 'login.dart';
import 'register.dart';

class ForgotPasswordScreen extends ConsumerStatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  ConsumerState<ForgotPasswordScreen> createState() =>
      _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends ConsumerState<ForgotPasswordScreen> {
  final emailController = TextEditingController();
  final verifyCodeController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final emailFocusNode = FocusNode();
  final verifyCodeFocusNode = FocusNode();

  bool isPasswordVisible = false;
  bool isVerifyCodeVisible = false;

  final formKey = GlobalKey<FormState>();

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

  String? validVerifyCode(String? verifyCode) {
    if (verifyCode == null || verifyCode.isEmpty) {
      return 'Verify code is required';
    }
    return null;
  }

  String? validPassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password is required';
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

  void togglePasswordVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  Future<void> forgotPassword() async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    final messenger = ScaffoldMessenger.of(context);
    final email = emailController.text;
    final (success, error) = await ref
        .read(sessionProvider.notifier)
        .forgotPassword(email: email);
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

  Future<void> resetPassword() async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    final messenger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);
    final verifyCode = verifyCodeController.text;
    final (success, error) = await ref
        .read(sessionProvider.notifier)
        .resetPassword(code: verifyCode, password: passwordController.text);

    if (error != null) {
      messenger.showSnackBar(
        SnackBar(content: Text(error.toString())),
      );
      return;
    }
    if (success) {
      navigator.pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    emailFocusNode.requestFocus();
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
                    Text(
                      'Forgot Password',
                      style: theme.textTheme.displaySmall,
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Form(
                          key: formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: emailController,
                                focusNode: emailFocusNode,
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                ),
                                validator: validEmail,
                                onEditingComplete: forgotPassword,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: UiButton(
                                    text: 'Register',
                                    icon: Icons.person_add,
                                    onPressed: forgotPassword,
                                  ),
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
                            icon: const Icon(Icons.login),
                            label: const Text('Login'),
                            style: TextButton.styleFrom(
                              foregroundColor:
                                  theme.colorScheme.onPrimaryContainer,
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
                                ),
                              );
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
                  if (isVerifyCodeVisible) ...[
                    Text('Reset Password', style: theme.textTheme.displaySmall),
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
                                    onEditingComplete: resetPassword,
                                    decoration: InputDecoration(
                                      labelText: 'Verify Code',
                                    ),
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
                                    onEditingComplete: resetPassword,
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
                                    onEditingComplete: resetPassword,
                                    obscureText: !isPasswordVisible,
                                    validator: validConfirmPassword,
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
                                  onPressed: resetPassword,
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
