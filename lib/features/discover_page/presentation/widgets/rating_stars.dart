import 'package:flutter/material.dart';

class Rating extends StatefulWidget {
  const Rating({super.key});

  @override
  RatingState createState() => RatingState();
}

class RatingState extends State<Rating> {
  List<bool> isSelected = List<bool>.filled(5, false);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        return GestureDetector(
          onTap: () {
            setState(
              () {
                for (int i = 0; i < 5; i++) {
                  isSelected[i] = i <= index;
                }
              },
            );
          },
          child: Icon(
            isSelected[index] ? Icons.star : Icons.star_border,
            color: isSelected[index] ? Colors.green : Colors.grey,
          ),
        );
      }),
    );
  }
}
