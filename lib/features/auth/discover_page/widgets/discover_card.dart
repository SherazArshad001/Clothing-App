import 'package:flutter/material.dart';
import 'package:gem_store_app/core/common/app_colors/app_colors.dart';

class DiscoverCaeds extends StatelessWidget {
  final String imageUrl;
  final Color cardColor;
  final String? cardText;
  const DiscoverCaeds.discoverCards({
    super.key,
    required this.imageUrl,
    required this.cardColor,
    this.cardText = '',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        color: cardColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                cardText.toString(),
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  color: AppColors.whiteColor,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Image.asset(imageUrl),
            ),
          ],
        ),
      ),
    );
  }
}
