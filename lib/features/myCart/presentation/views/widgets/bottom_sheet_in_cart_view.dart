import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';

class BottomSheetInCartView extends StatelessWidget {
  const BottomSheetInCartView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 24.h),
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
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                        const Text("Select Method", style: Styles.textStyle16),
                      ],
                    );
                  },
                  body: const Text("Item 1"),
                  isExpanded: false,
                ),
                ExpansionPanel(
                  backgroundColor: Colors.white,
                  headerBuilder: (context, isExpanded) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Payment",
                          style: Styles.textStyle18.copyWith(
                            color: kGreyColor,
                          ),
                        ),
                        const Icon(
                          Icons.payment_outlined,
                        )
                      ],
                    );
                  },
                  body: const Text("Item 1"),
                  isExpanded: false,
                ),
                ExpansionPanel(
                  backgroundColor: Colors.white,
                  headerBuilder: (context, isExpanded) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Promo Code",
                          style: Styles.textStyle18.copyWith(
                            color: kGreyColor,
                          ),
                        ),
                        const Text("Pick discount", style: Styles.textStyle16),
                      ],
                    );
                  },
                  body: const Text("Item 1"),
                  isExpanded: false,
                ),
                ExpansionPanel(
                  backgroundColor: Colors.white,
                  headerBuilder: (context, isExpanded) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Cost",
                          style: Styles.textStyle18.copyWith(
                            color: kGreyColor,
                          ),
                        ),
                        const Text("\$13.97", style: Styles.textStyle16),
                      ],
                    );
                  },
                  body: const Text("Item 1"),
                  isExpanded: false,
                ),
              ],
            ),
          ),
         const Padding(
           padding: EdgeInsets.symmetric(horizontal: 16.0),
           child: Divider(),
         ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'By placing an order you agree to our Terms And Conditions',
              style: Styles.textStyle14,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomButton(
              text: 'Place Order',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
