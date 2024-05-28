import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0.sp),
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
            const Divider(
              height: 10,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.shopping_bag_outlined,
                size: 27.sp,
              ),
              title: const Text(
                'Orders',
                style: Styles.textStyle18,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(
              height: 10,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.badge_outlined,
                size: 27.sp,
              ),
              title: const Text(
                'My Details',
                style: Styles.textStyle18,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(
              height: 10,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.location_on_outlined,
                size: 27.sp,
              ),
              title: const Text(
                'Delivery Address',
                style: Styles.textStyle18,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(
              height: 10,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.credit_card,
                size: 27.sp,
              ),
              title: const Text(
                'Payment Methods',
                style: Styles.textStyle18,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(
              height: 10,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.local_offer_outlined,
                size: 27.sp,
              ),
              title: const Text(
                'Promo Cord',
                style: Styles.textStyle18,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(
              height: 10,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.notifications_none,
                size: 27.sp,
              ),
              title: const Text(
                'Notifications',
                style: Styles.textStyle18,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(
              height: 10,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.help_outline,
                size: 27.sp,
              ),
              title: const Text(
                'Help',
                style: Styles.textStyle18,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(
              height: 10,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.error_outline,
                size: 27.sp,
              ),
              title: const Text(
                'About',
                style: Styles.textStyle18,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomButton(
                text: 'Log Out',
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
