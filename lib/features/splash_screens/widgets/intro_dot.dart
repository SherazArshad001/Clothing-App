import 'package:flutter/material.dart';
import 'package:gem_store_app/core/common/app_colors/app_colors.dart';

class IntroSwipeDot extends StatelessWidget {
  final bool isActive;

  const IntroSwipeDot({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AppColors.whiteColor),
        color:
            isActive ? const Color(0xffffffff) : Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
