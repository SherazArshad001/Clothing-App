import 'package:flutter/material.dart';
import 'package:gem_store_app/core/common/app_colors/app_colors.dart';

class ItemCard extends StatelessWidget {
  final String imagesUrl;
  final String imageTitle;
  final String imageDetail;
  const ItemCard({
    super.key,
    required this.imagesUrl,
    required this.imageTitle,
    required this.imageDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.backgroundColor,
      elevation: 1,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    imageTitle,
                    style: const TextStyle(
                      fontWeight: FontWeight.w200,
                      color: AppColors.grayColor,
                      fontSize: 12,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    imageDetail,
                    style: const TextStyle(
                        fontWeight: FontWeight.w300, fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Image.asset(
            imagesUrl,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
