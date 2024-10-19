import 'package:flutter/material.dart';
import '../organisms/login_organism.dart';

class LoginTemplate extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onLogin;

  const LoginTemplate({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.onLogin,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LoginOrganism(
          formKey: formKey,
          emailController: emailController,
          passwordController: passwordController,
          onLogin: onLogin,
        ),
      ),
    );
  }
}
