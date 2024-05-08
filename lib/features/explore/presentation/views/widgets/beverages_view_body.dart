import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'category_item.dart';


class BeveragesViewBod extends StatelessWidget {
  const BeveragesViewBod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.w,
          childAspectRatio: 0.73.sp,
        ),
        itemBuilder: (context, index) {
          return const Center(
            child: CategoryItem(),
          );
        },
      ),
    );
  }
}
