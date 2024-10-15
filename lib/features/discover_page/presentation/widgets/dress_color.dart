import 'package:flutter/material.dart';

class DressesColorSelection extends StatelessWidget {
  final Color dressColor;
  const DressesColorSelection({
    super.key,
    required this.dressColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Material(
        borderRadius: BorderRadius.circular(13),
        color: dressColor,
        child: const SizedBox(
          height: 26,
          width: 26,
        ),
      ),
    );
  }
}
