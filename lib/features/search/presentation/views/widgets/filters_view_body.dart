import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'section_brand_in_filters_view.dart';
import 'section_categories_in_filters_view.dart';

class FiltersViewBody extends StatelessWidget {
  const FiltersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.sp),
          topRight: Radius.circular(40.sp),
        ),
        color: const Color(0xffF2F3F2),
      ),
      child: const Column(
        children: [
          SizedBox(
            height: 20,
          ),
          SectionCategoriesInFiltersView(),
          SizedBox(
            height: 20,
          ),
          SectionBrandInFiltersView(),
        ],
      ),
    );
  }
}

