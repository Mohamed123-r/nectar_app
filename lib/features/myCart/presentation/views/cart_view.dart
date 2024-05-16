import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';
import 'widgets/my_cart_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My Cart",
          style: Styles.textStyle20,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: const MyCartBody(),
      ),
    );
  }
}
