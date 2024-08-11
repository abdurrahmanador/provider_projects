import 'package:flutter/material.dart';

import '../home_screen.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product Cart',
      home:HomeScreen(),
    );
  }
}

