import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';

class SectionNumberAndPriceInCartView extends StatefulWidget {
  const SectionNumberAndPriceInCartView({
    super.key,
  });

  @override
  State<SectionNumberAndPriceInCartView> createState() =>
      _SectionNumberAndPriceInProductDetailsState();
}

class _SectionNumberAndPriceInProductDetailsState
    extends State<SectionNumberAndPriceInCartView> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 8.0.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              MaterialButton(
                padding: EdgeInsets.zero,
                minWidth: 45.w,
                height: 45.h,
                onPressed: () {
                  setState(() {
                    if (number > 1) {
                      number--;
                    }
                  });
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0.sp),
                    side: const BorderSide(
                      color: kGreyColor,
                    )),
                child: Center(
                  child: Icon(
                    Icons.remove,
                    color: kGreyColor,
                    size: 30.sp,
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                number.toString(),
                style: Styles.textStyle18,
              ),
              SizedBox(
                width: 10.w,
              ),
              MaterialButton(
                padding: EdgeInsets.zero,
                minWidth: 45.w,
                height: 45.h,
                onPressed: () {
                  setState(() {
                    number++;
                  });
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0.sp),
                    side: const BorderSide(
                      color: kGreyColor,
                    )),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: kPrimaryColor,
                    size: 30.sp,
                  ),
                ),
              ),
            ],
          ),
          const Text(
            "\$4.99",
            style: Styles.textStyle18,
          ),
        ],
      ),
    );
  }
}
