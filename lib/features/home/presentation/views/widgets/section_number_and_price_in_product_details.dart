import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';

class SectionNumberAndPriceInProductDetails extends StatefulWidget {
  const SectionNumberAndPriceInProductDetails({
    super.key,
  });

  @override
  State<SectionNumberAndPriceInProductDetails> createState() =>
      _SectionNumberAndPriceInProductDetailsState();
}

class _SectionNumberAndPriceInProductDetailsState
    extends State<SectionNumberAndPriceInProductDetails> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  setState(() {
                    if (number > 1) {
                      number--;
                    }
                  });
                },
                icon: Icon(
                  Icons.remove,
                  color: kGreyColor,
                  size: 30.sp,
                ),
              ),
              Container(
                width: 45.w,
                height: 45.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0.sp),
                    border: Border.all()),
                child: Center(
                  child: Text(
                    number.toString(),
                    style: Styles.textStyle18,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    number++;
                  });
                },
                icon: Icon(
                  Icons.add,
                  color: kPrimaryColor,
                  size: 30.sp,
                ),
              ),
            ],
          ),
          const Text(
            "\$4.99",
            style: Styles.textStyle24,
          ),
        ],
      ),
    );
  }
}
