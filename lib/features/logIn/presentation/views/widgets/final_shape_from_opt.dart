import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';

import 'custom_item_from_opt.dart';

class FinalShapeFromOPT extends StatelessWidget {
  const FinalShapeFromOPT({
    super.key, required this.confirmNum,
  });

  final List<TextEditingController> confirmNum;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67.sp,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(color: kPrimaryColor),
        borderRadius: BorderRadius.circular(15.sp),
      ),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomItemFromOPT(controller: confirmNum[0] ,),
          CustomItemFromOPT(controller:  confirmNum[1] ,),
          CustomItemFromOPT(controller:  confirmNum[2],),
          CustomItemFromOPT(controller: confirmNum[3]  ,),
          CustomItemFromOPT(controller:  confirmNum[4] ,),
          CustomItemFromOPT(controller:  confirmNum[5] ,),
        ],
      ),
    );
  }
}

