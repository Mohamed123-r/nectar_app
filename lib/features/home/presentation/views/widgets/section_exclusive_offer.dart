import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';

class SectionExclusiveOffer extends StatelessWidget {
  const SectionExclusiveOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Exclusive Offer",
            style: Styles.textStyle24,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "See all",
              style: Styles.textStyle16.copyWith(
                color: kPrimaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
