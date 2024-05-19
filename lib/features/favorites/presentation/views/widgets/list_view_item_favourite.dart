import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/assets.dart';
import 'package:nectar/core/utils/styles.dart';

class ListViewItemFavourite extends StatelessWidget {
  const ListViewItemFavourite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(context, AppRouter.router(
           const RouteSettings(name: AppRouter.kProductDetailView),
        ));
      },
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(
        Assets.iconTest,
      ),
      title: const Text(
        'Apple Watch',
        style: Styles.textStyle16,
      ),
      subtitle:  Padding(
        padding: EdgeInsets.only(top: 4.0.h),
        child: const Text(
          '325ml, Price',
          style: Styles.textStyle14,
        ),
      ),
      trailing:  Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "\$325",
            style: Styles.textStyle16,
          ),
          SizedBox(
            width: 10.w,
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: kGreyColor,
          ),
        ],
      ),
    );
  }
}
