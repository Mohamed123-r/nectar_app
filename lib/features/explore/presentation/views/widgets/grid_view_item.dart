import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:nectar/core/utils/styles.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
    required this.backgroundColors,
    required this.index,
  });

  final List<Color> backgroundColors;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.h,
      width: 175.w,
      decoration: BoxDecoration(
        color: backgroundColors[index].withOpacity(.20),
        borderRadius: BorderRadius.circular(18.sp),
        border: Border.all(
          color: backgroundColors[index],
          width: 1,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Assets.proTest,
            height: 75.h,
            width: 111,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10.h,
          ),
          const Text(
            "Fresh Fruits & Vegetable",
            textAlign: TextAlign.center,
            style: Styles.textStyle16,
          )
        ],
      ),
    );
  }
}
