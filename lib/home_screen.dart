import 'package:flutter/material.dart';
import 'package:product_cart/cart_screen.dart';
import 'package:product_cart/product_data.dart';
import 'package:product_cart/provider/product_cart_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProductCartProvider productCartProvider =
        Provider.of<ProductCartProvider>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CartScreen(),
            ),
          );
        },
        child: Icon(Icons.shopping_cart),
      ),
      appBar: AppBar(
        title: Text("Product Page"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: ProductData.items.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(
                    ProductData.items[index].name,
                  ),
                  subtitle: Text(
                    ProductData.items[index].price.toString(),
                  ),
                  trailing: Checkbox(
                    onChanged: (value) {
                      if (value == true) {
                        productCartProvider
                            .addProduct(ProductData.items[index]);
                      } else {
                        productCartProvider
                            .removeProduct(ProductData.items[index]);
                      }
                    },
                    value: productCartProvider.items
                        .contains(ProductData.items[index]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
