import 'package:flutter/material.dart';
import 'package:gem_store_app/core/common/app_colors/app_colors.dart';
import 'package:gem_store_app/features/discover_page/widgets/rating_stars.dart';

class ProductDetailCard extends StatefulWidget {
  final String imagePath;
  final String title;
  final double price;
  final bool showHearIcon;
  const ProductDetailCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    this.showHearIcon = true,
  });

  @override
  ProductDetailCardState createState() => ProductDetailCardState();
}

class ProductDetailCardState extends State<ProductDetailCard> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          color: AppColors.cardbackColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              children: [
                Image.asset(
                  widget.imagePath,
                  fit: BoxFit.cover,
                  height: 250,
                ),
                if (widget.showHearIcon)
                  Positioned(
                    top: 10,
                    right: 10,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isFavorite = !_isFavorite;
                        });
                      },
                      child: Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(15),
                        child: SizedBox(
                          height: 30,
                          width: 30,
                          child: Image.asset(
                            'assets/images/heart.png',
                            color: _isFavorite ? Colors.red : null,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            widget.title,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            '\$ ${widget.price}',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        const Rating(),
      ],
    );
  }
}
