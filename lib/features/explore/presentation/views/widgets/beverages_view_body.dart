import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/widgets/category_item.dart';

class BeveragesViewBod extends StatelessWidget {
  const BeveragesViewBod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
        child: GridView.count(
          mainAxisSpacing: 10.h,
          crossAxisSpacing: 15.h,
          childAspectRatio: 0.72,
          crossAxisCount: 2,
          children: List.generate(
            15,
            (index) => const CategoryItem(),
          ),
        ),
      ),
    );
  }
}
