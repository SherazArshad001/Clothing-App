// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:gem_store_app/core/common/app_colors/app_colors.dart';
import 'package:gem_store_app/features/forget_password_page/pages/create_password_page.dart';

class VerifyPageBtn extends StatelessWidget {
  final String buttonText;
  const VerifyPageBtn({
    super.key,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          if (buttonText == 'Verify me') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CreatePasswordPage(),
              ),
            );
          }
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.bottomColor,
            foregroundColor: AppColors.whiteColor,
            fixedSize: const Size(180, 50)),
        child: Text(
          buttonText,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
    );
  }
}
