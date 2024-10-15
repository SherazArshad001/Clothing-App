import 'package:flutter/material.dart';
import 'package:gem_store_app/core/common/app_colors/app_colors.dart';

class HomeMainCard extends StatelessWidget {
  const HomeMainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/cardimage1.png',
              width: MediaQuery.sizeOf(context).width,
              fit: BoxFit.cover,
            ),
          ),
          const Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(right: 20.0, top: 40),
              child: Text(
                'Autumn \nCollection \n2024',
                style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
