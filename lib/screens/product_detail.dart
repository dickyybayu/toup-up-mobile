import 'package:flutter/material.dart';
import 'package:toup_up/models/product_entry.dart';

class ProductDetailPage extends StatelessWidget {
  final Product item;

  const ProductDetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${item.fields.name}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text("Price: ${item.fields.price}"),
            const SizedBox(height: 10),
            Text("Description: ${item.fields.description}"),
            const SizedBox(height: 10),
            Text("Quantity: ${item.fields.quantity}"),
            const SizedBox(height: 10),
            Text("Available: ${item.fields.available ? 'In Stock' : 'Out of Stock'}"),
          ],
        ),
      ),
    );
  }
}
