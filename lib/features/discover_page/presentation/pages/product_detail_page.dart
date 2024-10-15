import 'package:flutter/material.dart';
import 'package:gem_store_app/core/common/app_colors/app_colors.dart';
import 'package:gem_store_app/features/cart_page/presentation/widgets/cart_provider.dart';
import 'package:gem_store_app/features/discover_page/presentation/pages/dresses_page.dart';
import 'package:gem_store_app/features/discover_page/presentation/widgets/discription_tile.dart';
import 'package:gem_store_app/features/discover_page/presentation/widgets/dress_color.dart';
import 'package:gem_store_app/features/discover_page/presentation/widgets/dress_size_btn.dart';
import 'package:gem_store_app/features/discover_page/presentation/widgets/dress_size_text.dart';
import 'package:gem_store_app/features/auth/forget_password_page/presentation/widgets/back_btn.dart';
import 'package:provider/provider.dart';

class ProductDetailPage extends StatefulWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  String? selectedSize;

  void onSizeSelected(String size) {
    setState(() {
      selectedSize = size;
    });
  }

  void addProductToCart(BuildContext context, Product product) {
    Provider.of<CartProvider>(context, listen: false).addProductToCart(product);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Hero(
                  tag: widget.product.imagePath,
                  child: Image.asset(
                    widget.product.imagePath,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.5,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 20),
                  child: BackBtn(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        widget.product.title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '\$${widget.product.price.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            DressColorSizeText(textColorSize: 'Color'),
                            Row(
                              children: [
                                DressesColorSelection(
                                    dressColor: AppColors.dressColor1),
                                DressesColorSelection(
                                    dressColor: AppColors.dressColor2),
                                DressesColorSelection(
                                    dressColor: AppColors.dressColor3),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const DressColorSizeText(textColorSize: 'Size'),
                            Row(
                              children: ['S', 'M', 'L'].map((size) {
                                return DressesSizeBtn(
                                  sizeText: size,
                                  isSelected: selectedSize == size,
                                  onTap: () => onSizeSelected(size),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const DescriptionReviewTile(
                    tileText: 'Description',
                    customerReviews: [],
                  ),
                  DescriptionReviewTile(
                    tileText: 'Reviews',
                    customerReviews: [
                      CustomerReview(
                        customerImage: 'assets/images/review.png',
                        customerName: 'John Doe',
                        review: 'Great product! I love it.',
                      ),
                      CustomerReview(
                        customerImage: 'assets/images/review2.png',
                        customerName: 'Jane Doe',
                        review: 'Good quality, but a bit expensive.',
                      ),
                      CustomerReview(
                        customerImage: 'assets/images/review.png',
                        customerName: 'Bob Smith',
                        review: 'Excellent customer service!',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        decoration: const BoxDecoration(
          color: AppColors.bottomNavbarColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: TextButton(
          onPressed: () {
            addProductToCart(context, widget.product);
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              SizedBox(width: 5),
              Text(
                'Add to Cart',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
