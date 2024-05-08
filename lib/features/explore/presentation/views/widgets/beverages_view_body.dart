import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'category_item.dart';

class BeveragesViewBod extends StatelessWidget {
  const BeveragesViewBod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        mainAxisSpacing: 25.h,
        crossAxisSpacing: 0,
        childAspectRatio: 0.82,
        crossAxisCount: 2,
        children: List.generate(
          15,
          (index) => const CategoryItem(),
        ),
      ),
    );
  }
}
