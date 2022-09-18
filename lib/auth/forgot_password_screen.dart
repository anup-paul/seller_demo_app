import 'package:demo_seller_app/general/theme_style.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ThemeStyle.white,
        centerTitle: true,
        title: const Text(
          "Forgot Password",
          style: TextStyle(color: ThemeStyle.black),
        ),
      ),
    );
  }
}
