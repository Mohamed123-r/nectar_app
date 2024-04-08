import 'package:flutter/material.dart';
import 'category_item.dart';

class SectionExclusiveOffer extends StatelessWidget {
  const SectionExclusiveOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const Row(
          children: [
            SizedBox(
              width: 16,
            ),
            CategoryItem(),
          ],
        );
      },
    );
  }
}
