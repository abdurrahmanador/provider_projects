import 'package:flutter/material.dart';
import 'package:product_cart/product_data.dart';
import 'package:product_cart/provider/product_cart_provider.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});


  @override
  Widget build(BuildContext context) {
    ProductCartProvider productCartProvider=Provider.of<ProductCartProvider>(context);
    return Scaffold(

      appBar: AppBar(
        title: Text("Cart Page"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: productCartProvider.items.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(productCartProvider.items[index].name,),
                  subtitle: Text(productCartProvider.items[index].price.toString(),),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(16)
              ),
              width: double.infinity,
              height: 100,
              child: Center(child: Text("Total Price: ${productCartProvider.totalExpense()}",style: TextStyle(color: Colors.white),)),)
          ],
        ),
      ),
    );
  }
}
