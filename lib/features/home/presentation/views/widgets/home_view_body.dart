import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/features/home/presentation/views/widgets/section_best_selling.dart';
import 'package:nectar/features/home/presentation/views/widgets/section_exclusive_offer.dart';
import 'custom_carousel_slider.dart';
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
                 Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 16.0.w),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                AppRouter.router(
                  const RouteSettings(
                    name: AppRouter.kSearchView,
                  ),
                ),
              );
            },
            child: Container(
              height: 60.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 15.w,
                  ),
                  const Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Search Store',
                    style: Styles.textStyle16.copyWith(
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 10.sp),
                      CustomCarouselSlider(
                        height: 115,
                        autoPlay: true,
                        imageSliders: [
                          Image.asset(Assets.sliderTest),
                          Image.asset(Assets.sliderTest),
                          Image.asset(Assets.sliderTest),
                        ],
                      ),
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
                        child: SectionGroceries(),
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
