import 'package:flutter/material.dart';

class DressColorSizeText extends StatelessWidget {
  final String textColorSize;
  const DressColorSizeText({
    super.key,
    required this.textColorSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        textColorSize,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
