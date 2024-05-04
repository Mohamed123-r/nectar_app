import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/assets.dart';
import 'custom_carousel_slider.dart';
import 'section_number_and_price_in_product_details.dart';
import 'section_product_details.dart';

class ProductDetailViewBody extends StatelessWidget {
  const ProductDetailViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 350.sp,
          decoration: const BoxDecoration(
            color: Color(0xFFF2F3F2),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            ),
          ),
          child: CustomCarouselSlider(
            height: 350.sp,
            autoPlay: false,
            imageSliders: [
              Image.asset(Assets.iconTest),
              Image.asset(Assets.iconTest),
              Image.asset(Assets.iconTest),
            ],
          ),
        ),
        const SectionProductDetails(),
        const SectionNumberAndPriceInProductDetails(),
      ],
    );
  }
}
