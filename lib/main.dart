import 'package:flutter/material.dart';
import 'package:product_cart/provider/product_cart_provider.dart';
import 'package:provider/provider.dart';

import 'application/product_cart.dart';

void main() {
  runApp( ChangeNotifierProvider(
    create: (context)=>ProductCartProvider(),
      child: ProductCart()));
}

