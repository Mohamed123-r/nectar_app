import 'package:flutter/material.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
      ),
      body: const Center(
        child: Text('Product Detail'),
      ),
    );
  }
}
