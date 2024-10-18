import 'package:flutter/material.dart';
import '../atoms/custom_button.dart';

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              text: 'Sign in with Google',
              onPressed: () {
                // Implement Google sign-in
              },
            ),
            CustomButton(
              text: 'Sign in with Facebook',
              onPressed: () {
                // Implement Facebook sign-in
              },
            ),
          ],
        ),
        SizedBox(height: 16),
        CustomButton(
          text: 'Sign in with Apple',
          onPressed: () {
            // Implement Apple sign-in
          },
        ),
      ],
    );
  }
}
