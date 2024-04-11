import 'package:flutter/material.dart';
import 'widgets/product_detail_view-body.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new,
            color: Color(0xFF181725),),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.share,
            color: Color(0xFF181725),),
            onPressed: () {},
          ),
        ],
      ),
      body: const ProductDetailViewBody(),
    );
  }
}
