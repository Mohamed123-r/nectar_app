import 'package:flutter/material.dart';
import 'groceries_item.dart';

class SectionGroceries extends StatelessWidget {
  SectionGroceries({super.key});

  final List<int> colors = [
    0xFFffA111,
    0xFF88EFEF,
    0xFF44D8D8,
    0xFFD8D8D8,
    0xFFEFEF7F,
    0xFF6F5FEF,
    0xFFD5D8D8,
    0xFF8FEFEF,
    0xFFEFEF1F,
    0xFFD8D8D8,
    0xFF24EFEF,
    0xFFE57FEF,
    0xFFD348D8,
    0xFF88EFEF,
    0xFFEFEFEF,
    0xFFD8D8D8,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return GroceriesItem(
          color: colors[index],
        );
      },
    );
  }
}
