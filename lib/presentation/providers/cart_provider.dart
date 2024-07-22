import 'package:flutter/material.dart';
import 'package:provider_flutter/config/product/product_items.dart';

class CartProvider extends ChangeNotifier {
  final List<ProductItem> productsItems = [];

  void addProductCart(ProductItem productItem) {
    productsItems.add(productItem);
    notifyListeners();
  }

  void removeProductCart(int id) {
    productsItems.removeWhere((product) => product.id == id);
    notifyListeners();
  }

  void removeAllProductsCart() {
    productsItems.clear();
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.00;
    for (var product in productsItems) {
      total += product.price;
    }
    return total;
  }
}
