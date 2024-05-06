import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_text_field_search.dart';

class ExploreViewBody extends StatelessWidget {
   ExploreViewBody({super.key});

  final List<Color> backgroundColors = [
    const Color(0xFF53B175),
    const Color(0xFFF8A44C),
    const Color(0xFFD3B0E0),
    const Color(0xFFFDE598),
    const Color(0xffF7A593),
    const Color(0xFFB7DFF5),
    const Color(0xFF836AF6),
    const Color(0xFFD73B77),
    const Color(0xFF53B175),
    const Color(0xFFF8A44C),
    const Color(0xFFD3B0E0),
    const Color(0xFFFDE598),
    const Color(0xffF7A593),
    const Color(0xFFB7DFF5),
    const Color(0xFF836AF6),
    const Color(0xFFD73B77),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomSearchTextField(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              childAspectRatio: 0.92,
              crossAxisCount: 2,
              crossAxisSpacing: 15.h,
              mainAxisSpacing: 15.w,
              children: List.generate(
                15,
                (index) => Container(
                  height: 190.h,
                  width: 175.w,
                  decoration: BoxDecoration(
                    color: backgroundColors[index].withOpacity(.20),
                    borderRadius: BorderRadius.circular(18.sp),
                    border: Border.all(
                      color: backgroundColors[index],
                      width: 1,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        Assets.proTest,
                        height: 75.h,
                        width: 111,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Text(
                        "Fresh Fruits & Vegetable",
                        textAlign: TextAlign.center,
                        style: Styles.textStyle16,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
