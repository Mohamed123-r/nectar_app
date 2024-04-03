import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';

class CustomItemFromOPT extends StatelessWidget {
  const CustomItemFromOPT({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.sp,
      width: 45.sp,
      child: TextFormField(
        keyboardType: TextInputType.number,
        maxLines: 1,
        cursorColor: kGreyColor,
        onSaved: (value) {},
        onChanged: (e) {
          if (e.length == 1) {
            FocusScope.of(context).nextFocus();
          } else {
            FocusScope.of(context).previousFocus();
          }
        },
        decoration: InputDecoration(

          focusedBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(5.sp),
            borderSide: const BorderSide(color: kPrimaryColor),
          ),
          enabledBorder:UnderlineInputBorder(
            borderRadius: BorderRadius.circular(5.sp),
            borderSide: const BorderSide(color: kGreyColor),
          ),
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}