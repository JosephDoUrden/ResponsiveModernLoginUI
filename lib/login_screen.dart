import 'package:flutter/material.dart';
import 'package:responsive_modern_login_ui/constants/paths.dart';
import 'package:responsive_modern_login_ui/constants/project_text.dart';
import 'package:responsive_modern_login_ui/widgets/gradient_button.dart';
import 'package:responsive_modern_login_ui/widgets/login_field.dart';
import 'package:responsive_modern_login_ui/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(AssetPaths().imagePath),
              Text(
                ProjectText().signInText,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              const SizedBox(height: 50),
              SocialButton(
                iconPath: AssetPaths().gSvgPath,
                label: ProjectText().contWithGoogle,
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              SocialButton(
                iconPath: AssetPaths().fSvgPath,
                label: ProjectText().contWithFacebook,
                horizontalPadding: 90.0,
                onPressed: () {},
              ),
              const SizedBox(height: 15),
              const Text(
                'or',
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(height: 15),
              LoginFiled(hintText: 'Email'),
              const SizedBox(height: 15),
              LoginFiled(hintText: 'Password'),
              const SizedBox(height: 20),
              GradientButton(),
            ],
          ),
        ),
      ),
    );
  }
}
