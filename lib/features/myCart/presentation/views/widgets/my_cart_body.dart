import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/features/myCart/presentation/views/widgets/section_number_and_price_in_cart_view.dart';

class MyCartBody extends StatelessWidget {
  const MyCartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Image.asset(
            Assets.iconTest,
            width: 125.sp,
            height: 80.sp,
          ),
           Column(
            children: [
              Row(
                children: [
                  const Text(
                    "Bell Pepper Red",
                    style: Styles.textStyle16,
                  ),
                  IconButton(onPressed:(){} , icon: const Icon(Icons.delete)),
                ],
              ),
              const Text(
                "1kg Price",
                style: Styles.textStyle14,
              ),
              const SectionNumberAndPriceInCartView()
            ],
          )
        ],
      ),
    );
  }
}
