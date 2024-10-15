import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gem_store_app/features/discover_page/pages/product_detail_page.dart';
import 'package:gem_store_app/features/forget_password_page/widgets/back_btn.dart';
import 'package:gem_store_app/features/home_page/widgets/product_detail_card.dart';

class DressesPage extends StatefulWidget {
  const DressesPage({super.key});

  @override
  State<DressesPage> createState() => _DressesPageState();
}

class _DressesPageState extends State<DressesPage> {
  List<Product> products = [
    Product(imagePath: 'assets/images/pic1.png', title: 'Dress 1', price: 200),
    Product(imagePath: 'assets/images/pic2.png', title: 'Dress 2', price: 300),
    Product(imagePath: 'assets/images/pic3.png', title: 'Dress 3', price: 300),
    Product(imagePath: 'assets/images/pic4.png', title: 'Dress 4', price: 300),
    Product(imagePath: 'assets/images/pic5.png', title: 'Dress 5', price: 300),
    Product(imagePath: 'assets/images/pic6.png', title: 'Dress 6', price: 300),
    Product(imagePath: 'assets/images/pic7.png', title: 'Dress 7', price: 300),
    Product(imagePath: 'assets/images/pic8.png', title: 'Dress 8', price: 300),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 14),
                    child: BackBtn(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Dresses',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Results Found',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: StaggeredGrid.count(
                  crossAxisCount:
                      MediaQuery.of(context).size.width > 600 ? 3 : 2,
                  mainAxisSpacing: 16.0,
                  children: products.map((product) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              transitionDuration:
                                  const Duration(milliseconds: 600),
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      ProductDetailPage(product: product),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                const begin =
                                    Offset(0.0, 1.0); // Slide up from bottom
                                const end = Offset.zero;
                                const curve = Curves.easeInOut;

                                var tween = Tween(begin: begin, end: end)
                                    .chain(CurveTween(curve: curve));
                                return SlideTransition(
                                  position: animation.drive(tween),
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        child: ProductDetailCard(
                          imagePath: product.imagePath,
                          title: product.title,
                          price: product.price,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Product {
  final String imagePath;
  final String title;
  final double price;

  Product({required this.imagePath, required this.title, required this.price});
}
