import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/widgets/custom_text_from_text_field.dart';
import 'final_shape_from_opt.dart';

class SectionTextFieldFromSendCode extends StatelessWidget {
  const SectionTextFieldFromSendCode({super.key, required this.confirmNum});

  final List<TextEditingController> confirmNum;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTextFromTextField(
          hintText: 'Enter the 6 digits code',
        ),
        SizedBox(height: 20.sp),
         FinalShapeFromOPT(confirmNum: confirmNum,),
      ],
    );
  }
}
