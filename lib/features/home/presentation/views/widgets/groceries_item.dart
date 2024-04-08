import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:nectar/core/utils/styles.dart';

class GroceriesItem extends StatelessWidget {
  const GroceriesItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 16,
        ),
        Container(
          height: 105.sp,
          width: 250.sp,
          decoration: BoxDecoration(
            color: Color(0xFFF8A44C),
            borderRadius: BorderRadius.circular(20.sp),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Image.asset(
                  Assets.iconTest,
                  width: 75.sp,
                  height: 75.sp,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Pulses",
                  style: Styles.textStyle20,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
