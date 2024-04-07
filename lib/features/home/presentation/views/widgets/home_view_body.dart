import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/features/home/presentation/views/widgets/section_exclusive_offer.dart';
import 'custom_carousel_slider.dart';
import 'custom_text_field_search.dart';
import 'sliver_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          const CustomSliverAppBar(),
        ];
      },
      body: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              const CustomSearchTextField(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 20.sp),
                      const CustomCarouselSlider(),
                      SizedBox(height: 30.sp),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Exclusive Offer",
                            style: Styles.textStyle24,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "See all",
                              style: Styles.textStyle16.copyWith(
                                color: kPrimaryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10.sp),
                     const SectionExclusiveOffer(),
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
