import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:nectar/core/utils/styles.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0.sp,
        ),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 24.0.h),
              child: Row(
                children: [
                  Container(
                    height: 65.h,
                    width: 65.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          Assets.accontTest,
                        ),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          27,
                        ),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "John Doe",
                        style: Styles.textStyle20,
                      ),
                      Text("Imshuvo97@gmail.com",
                          style: Styles.textStyle16.copyWith(
                            color: kGreyColor,
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
