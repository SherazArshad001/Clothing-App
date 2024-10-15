import 'package:flutter/material.dart';

import '../../../../core/common/app_colors/app_colors.dart';

class RecommendProductCard extends StatelessWidget {
  final String recomendProductImgUrl;
  final String recommendProductPrice;
  final String recommendProductName;

  const RecommendProductCard({
    super.key,
    required this.recomendProductImgUrl,
    required this.recommendProductPrice,
    required this.recommendProductName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
      child: Card(
        elevation: 0,
        color: AppColors.backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              recomendProductImgUrl,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recommendProductName,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '\$ $recommendProductPrice',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
