import 'package:flutter/material.dart';
import 'package:gem_store_app/core/common/app_colors/app_colors.dart';

class SeeAllProduct extends StatelessWidget {
  final String pageRecommend;
  final String seeAllBtn;
  const SeeAllProduct({
    super.key,
    required this.pageRecommend,
    required this.seeAllBtn,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Text(
            pageRecommend,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              seeAllBtn,
              style: const TextStyle(color: AppColors.blackColor),
            ),
          ),
        ],
      ),
    );
  }
}
