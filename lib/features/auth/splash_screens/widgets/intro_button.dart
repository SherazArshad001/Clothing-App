// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gem_store_app/core/common/app_colors/app_colors.dart';

class IntroButton extends StatelessWidget {
  final int currentScreen;
  final VoidCallback? onPressed;
  const IntroButton({
    super.key,
    required this.currentScreen,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: const BorderSide(width: 1, color: AppColors.whiteColor),
          foregroundColor: AppColors.whiteColor,
          backgroundColor: AppColors.whiteColor.withOpacity(0.4),
          textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          fixedSize: const Size(200, 60),
        ),
        onPressed: onPressed,
        child: const Text('Shopping Now'),
      ),
    );
  }
}
