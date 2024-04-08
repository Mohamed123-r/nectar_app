import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'category_item.dart';

class SectionExclusiveOffer extends StatelessWidget {
  const SectionExclusiveOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 16.0.sp),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return const CategoryItem();
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 20.sp,
          );
        },
      ),
    );
  }
}
