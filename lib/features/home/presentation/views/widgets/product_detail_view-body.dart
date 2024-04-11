import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/assets.dart';

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
          child: CarouselSlider(
            items: [
              Image.asset(Assets.iconTest),
              Image.asset(Assets.iconTest),
              Image.asset(Assets.iconTest),
            ],
            options: CarouselOptions(
              height: 200.sp,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ],
    );
  }
}
