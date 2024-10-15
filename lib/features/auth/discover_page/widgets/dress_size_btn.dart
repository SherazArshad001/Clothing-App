import 'package:flutter/material.dart';
import 'package:gem_store_app/core/common/app_colors/app_colors.dart';

class DressesSizeBtn extends StatelessWidget {
  final String sizeText;
  final bool isSelected;
  final VoidCallback onTap;

  const DressesSizeBtn({
    super.key,
    required this.sizeText,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GestureDetector(
        onTap: onTap,
        child: Material(
          elevation: 2,
          borderRadius: BorderRadius.circular(15),
          color: isSelected ? AppColors.cardbackColor2 : AppColors.whiteColor,
          child: SizedBox(
            height: 30,
            width: 30,
            child: Center(
              child: Text(
                sizeText,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
