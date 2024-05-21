import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';
import 'list_view_item_cart.dart';

class MyCartBody extends StatelessWidget {
  const MyCartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: index == 19
              ? EdgeInsets.only(top: 16.sp, bottom: 80.sp)
              : EdgeInsets.symmetric(vertical: 16.0.sp),
          child: const ListViewItemCart(),
        ),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
      Positioned(
        bottom: 10.h,
        left: 0.h,
        right: 0.h,
        child: CustomButton(
          text: 'Go to Checkout',
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: Colors.white,
              context: context,
              builder: (context) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 16.0.w, vertical: 24.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Checkout",
                          style: Styles.textStyle20,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(Icons.close)),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: ExpansionPanelList(
                      elevation: 0,
                      expandIconColor: Colors.black,
                      children: [
                        ExpansionPanel(
                          backgroundColor: Colors.white,
                          headerBuilder: (context, isExpanded) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Delivery",
                                  style: Styles.textStyle18.copyWith(
                                    color: kGreyColor,
                                  ),
                                ),
                                const Text("Select Method",
                                    style: Styles.textStyle16),
                              ],
                            );
                          },
                          body: const Text("Item 1"),
                          isExpanded: false,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CustomButton(
                      text: 'Checkout',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    ]);
  }
}
