import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  final double size;

  const LogoImage({Key? key, this.size = 100}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/aladia_logo.png',
      width: size,
      height: size,
    );
  }
}
