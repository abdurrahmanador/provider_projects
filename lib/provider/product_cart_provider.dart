import 'package:flutter/material.dart';
import '../product_data.dart'; // Import your Product class

class ProductCartProvider extends ChangeNotifier {
  List<Product> _items = [];

  List<Product> get items => _items;

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }

  void removeProduct(Product product) {
    _items.remove(product);
    notifyListeners();
  }

  void clearProducts() {
    _items.clear();
    notifyListeners();
  }

  double totalExpense() {
    return _items.fold(0.0, (previousValue, product) => previousValue + product.price);
  }
}
