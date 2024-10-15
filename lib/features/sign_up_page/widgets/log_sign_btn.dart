import 'package:flutter/material.dart';
import 'package:gem_store_app/core/bottom_navbar/bottom_navbar.dart';
import 'package:gem_store_app/core/common/app_colors/app_colors.dart';

class LogSignBTN extends StatelessWidget {
  final String buttonText;
  const LogSignBTN(
      {super.key, required this.formKey, required this.buttonText});

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: ElevatedButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BottomNavBar(),
                ),
              );
            }
          },
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(130, 40),
            foregroundColor: AppColors.whiteColor,
            backgroundColor: AppColors.blackColor,
          ),
          child: Text(buttonText),
        ),
      ),
    );
  }
}
