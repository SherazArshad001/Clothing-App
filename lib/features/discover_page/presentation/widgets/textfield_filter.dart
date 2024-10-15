import 'package:flutter/material.dart';
import 'package:gem_store_app/core/common/app_colors/app_colors.dart';

class TextFieldFilter extends StatelessWidget {
  const TextFieldFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Material(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: AppColors.cardbackColor,
            elevation: 1,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('assets/images/search.png'),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Material(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: AppColors.cardbackColor,
            child: SizedBox(
              height: 50,
              width: 50,
              child: Image.asset('assets/images/filter.png'),
            ),
          ),
        )
      ],
    );
  }
}
