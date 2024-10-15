import 'package:flutter/material.dart';
import 'package:gem_store_app/core/common/app_colors/app_colors.dart';
import 'package:gem_store_app/features/auth/forget_password_page/pages/forget_page.dart';
import 'package:gem_store_app/features/auth/log_in_page/pages/log_in.dart';
import 'package:gem_store_app/features/auth/sign_up_page/pages/sign_up.dart';

class AuthTextBtn extends StatelessWidget {
  final String? lineText;
  final String btnText;
  const AuthTextBtn({
    super.key,
    this.lineText = '',
    required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: btnText == 'Forget password'
          ? MainAxisAlignment.start
          : MainAxisAlignment.center,
      children: [
        Text(lineText.toString()),
        TextButton(
          onPressed: () {
            if (btnText == 'Log In') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LogInPage(),
                ),
              );
            } else if (btnText == 'Sign Up') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUpPage(),
                ),
              );
            } else if (btnText == 'Forget password') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ForgetPasswordPage(),
                ),
              );
            }
          },
          child: Text(
            btnText,
            style: const TextStyle(
              color: AppColors.blackColor,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
