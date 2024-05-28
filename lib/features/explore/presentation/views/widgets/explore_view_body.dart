import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/widgets/custom_text_field_search.dart';
import 'grid_view_item.dart';

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
            padding:  EdgeInsets.symmetric(
                vertical: 8.h,
                horizontal: 16.0.w),
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              childAspectRatio: 0.92,
              crossAxisCount: 2,
              crossAxisSpacing: 15.h,
              mainAxisSpacing: 15.w,
              children: List.generate(
                15,
                (index) => GridViewItem(
                  backgroundColors: backgroundColors,
                  index: index,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
