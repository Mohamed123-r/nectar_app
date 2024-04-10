import 'package:flutter/material.dart';

class ProductDetailViewBody extends StatelessWidget {
  const ProductDetailViewBody({
    super.key,
  });

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
