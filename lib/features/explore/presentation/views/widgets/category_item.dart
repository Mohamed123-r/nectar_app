import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:nectar/core/utils/styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              AppRouter.router(
                const RouteSettings(name: AppRouter.kProductDetailView),
              ),
            );
          },
          child: Container(
            width: 170.sp,
            height: 250.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.sp),
              border: Border.all(
                color: Colors.grey.shade300,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    Assets.iconTest,
                    width: 125.sp,
                    height: 80.sp,
                  ),
                  const Spacer(),
                  const Text(
                    "Red Apple",
                    style: Styles.textStyle18,
                  ),
                  SizedBox(height: 5.sp),
                  Text(
                    "1kg, Priced",
                    style: Styles.textStyle14.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "\$9.99",
                        style: Styles.textStyle18,
                      ),
                      FloatingActionButton(
                        backgroundColor: kPrimaryColor,
                        onPressed: () {},
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
