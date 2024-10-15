import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSize {
  final double? height;
  final String pageNmae;
  const MyAppBar({
    super.key,
    this.height = 100,
    required this.pageNmae,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: PreferredSize(
        preferredSize: Size.fromHeight(height!),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/menu.png'),
            ),
            Text(
              pageNmae,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/Bell.png'),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height!);

  @override
  Widget get child => throw UnimplementedError();
}
