import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/widgets/category_item.dart';
import 'search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const SearchTextField(),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                AppRouter.router(
                  const RouteSettings(name: AppRouter.kFiltersView),
                ),
              );
            },
            icon: const Icon(
              Icons.tune,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.h),
        child: GridView.count(
          mainAxisSpacing: 10.h,
          crossAxisSpacing: 15.h,
          childAspectRatio: 0.72,
          crossAxisCount: 2,
          children: List.generate(
            15,
            (index) => const CategoryItem(),
          ),
        ),
      ),
    );
  }
}
