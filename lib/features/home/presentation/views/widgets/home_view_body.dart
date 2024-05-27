import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:nectar/features/home/presentation/views/widgets/section_best_selling.dart';
import 'package:nectar/features/home/presentation/views/widgets/section_exclusive_offer.dart';
import 'custom_carousel_slider.dart';
import '../../../../../core/widgets/custom_text_field_search.dart';
import 'section_all_category.dart';
import 'section_groceries.dart';
import 'sliver_appbar.dart';
import 'title_groups_items.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.storefront),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.manage_search),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Card',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Account',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: const Color(0xff181725),
            onTap: _onItemTapped,
          ),
          body: Column(
            children: [
              const CustomSearchTextField(),
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
