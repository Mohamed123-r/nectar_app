import 'package:flutter/material.dart';
import 'widgets/product_detail_view-body.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
      ),
      body: const ProductDetailViewBody(),
    );
  }
}
