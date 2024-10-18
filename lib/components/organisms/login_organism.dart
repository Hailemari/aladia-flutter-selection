import 'package:flutter/material.dart';
import '../atoms/logo_image.dart';
import '../molecules/login_form.dart';
import '../molecules/social_login_buttons.dart';

class LoginOrganism extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onLogin;

  const LoginOrganism({
    Key? key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.onLogin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LogoImage(),
            SizedBox(height: 32),
            LoginForm(
              formKey: formKey,
              emailController: emailController,
              passwordController: passwordController,
              onLogin: onLogin,
            ),
            SizedBox(height: 24),
            SocialLoginButtons(),
          ],
        ),
      ),
    );
  }
}
