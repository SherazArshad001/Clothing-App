import 'package:flutter/material.dart';
import 'package:gem_store_app/features/auth/discover_page/pages/dresses_page.dart';

class CartProvider with ChangeNotifier {
  final List<Product> _cartProducts = [];

  List<Product> get cartProducts => _cartProducts;

  void addProductToCart(Product product) {
    _cartProducts.add(product);
    notifyListeners();
  }

  void removeProductFromCart(Product product) {
    _cartProducts.remove(product);
    notifyListeners();
  }
}
