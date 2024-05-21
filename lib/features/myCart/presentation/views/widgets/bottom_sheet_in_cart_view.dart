import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';

class BottomSheetInCartView extends StatelessWidget {
  const BottomSheetInCartView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
