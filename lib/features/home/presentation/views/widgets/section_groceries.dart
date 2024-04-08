import 'package:flutter/material.dart';
import 'groceries_item.dart';

class SectionGroceries extends StatelessWidget {
  const SectionGroceries({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const GroceriesItem();
      },
    );
  }
}

