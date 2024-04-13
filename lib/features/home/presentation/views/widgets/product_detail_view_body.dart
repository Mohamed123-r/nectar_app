import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_text_from_text_field.dart';
import 'custom_carousel_slider.dart';

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
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Naturel Red Apple",
                    style: Styles.textStyle24,
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      color: kGreyColor,
                    ),
                  ),
                ],
              ),
              const CustomTextFromTextField(hintText: "1kg, Price"),
            ],
          ),
        ),
      ],
    );
  }
}
