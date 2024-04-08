import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/features/home/presentation/views/widgets/section_best_selling.dart';
import 'package:nectar/features/home/presentation/views/widgets/section_exclusive_offer.dart';
import 'custom_carousel_slider.dart';
import 'custom_text_field_search.dart';
import 'section_all_category.dart';
import 'section_groceries.dart';
import 'sliver_appbar.dart';
import 'title_groups_items.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            const CustomSliverAppBar(),
          ];
        },
        body: Scaffold(
          body: Column(
            children: [
              const CustomSearchTextField(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 10.sp),
                      const CustomCarouselSlider(),
                      SizedBox(height: 20.sp),
                      TitleGroupsItems(
                        title: 'Exclusive Offer',
                        onPressedSeeAllButton: () {},
                      ),
                      SizedBox(height: 10.sp),
                      SizedBox(
                        height: 250.sp,
                        child: const SectionExclusiveOffer(),
                      ),
                      SizedBox(height: 20.sp),
                      TitleGroupsItems(
                        title: 'Best Selling',
                        onPressedSeeAllButton: () {},
                      ),
                      SizedBox(height: 10.sp),
                      SizedBox(
                        height: 250.sp,
                        child: const SectionBestSelling(),
                      ),
                      SizedBox(height: 20.sp),
                      TitleGroupsItems(
                        title: 'Groceries',
                        onPressedSeeAllButton: () {},
                      ),
                      SizedBox(height: 10.sp),
                      SizedBox(
                        height: 105.sp,
                        child: const SectionGroceries(),
                      ),
                      SizedBox(height: 10.sp),
                      SizedBox(
                        height: 250.sp,
                        child: const SectionAllCategory(),
                      ),
                      SizedBox(height: 20.sp),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
