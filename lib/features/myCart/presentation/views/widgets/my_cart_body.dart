import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/assets.dart';

class MyCartBody  extends StatelessWidget {
  const MyCartBody ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(child: Row(
      children: [
        Image.asset(
          Assets.iconTest,
          width: 125.sp,
          height: 80.sp,
        ),
        const Column(
          children: [
            Text(""),
          ],
        )
      ],
    ),);
  }
}
