import 'package:flutter/material.dart';
import '../../routes/app_routes.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  final List<Map<String, String>> products = const [
    {"name": "Product 1", "price": "\$10"},
    {"name": "Product 2", "price": "\$20"},
    {"name": "Product 3", "price": "\$15"},
    {"name": "Product 4", "price": "\$25"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 15),
            child: ListTile(
              title: Text(products[index]["name"]!),
              subtitle: Text(products[index]["price"]!),
              trailing: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.cart);
                },
                child: const Text("Add to Cart"),
              ),
            ),
          );
        },
      ),
    );
  }
}
