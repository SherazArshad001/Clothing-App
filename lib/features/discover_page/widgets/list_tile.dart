import 'package:flutter/material.dart';
import 'package:gem_store_app/core/common/app_colors/app_colors.dart';

class CustomListTile extends StatelessWidget {
  final String listTitle;
  final VoidCallback? onTap;
  const CustomListTile({super.key, required this.listTitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(listTitle),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Products'),
          IconButton(
            onPressed: onTap,
            icon: Material(
              color: AppColors.cardbackColor1,
              borderRadius: BorderRadius.circular(10),
              child: const SizedBox(
                height: 25,
                width: 25,
                child: Icon(
                  Icons.navigate_next_outlined,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
