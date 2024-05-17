import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/features/myCart/presentation/views/widgets/section_number_and_price_in_cart_view.dart';

class MyCartBody extends StatelessWidget {
  const MyCartBody({super.key});
//TODO: implement

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              Assets.iconTest,
              fit: BoxFit.fill,
              width: 85.sp,
              height: 85.sp,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Bell Pepper Red",
                      style: Styles.textStyle16,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.close,
                        color: kGreyColor,
                      ),
                    ),
                  ],
                ),
                const Text(
                  "1kg Price",
                  style: Styles.textStyle14,
                ),
                const SectionNumberAndPriceInCartView()
              ],
            ),
          )
        ],
      ),
    );
  }
}
