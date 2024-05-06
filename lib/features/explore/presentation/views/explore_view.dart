import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Find Products',
          style: Styles.textStyle20,
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Explore'),
      ),
    );
  }
}
