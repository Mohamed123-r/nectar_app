import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';

class CheckBoxItem extends StatefulWidget {
  const CheckBoxItem({super.key, required this.title});
  final String title ;
  @override
  State<CheckBoxItem> createState() => _CheckBoxItemState();
}

class _CheckBoxItemState extends State<CheckBoxItem> {
  late bool? checkedValue = false;
  Color textColor =Colors.black;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: checkedValue,
      onChanged: (value) {
        textColor == Colors.black
            ? textColor = kPrimaryColor
            : textColor = Colors.black;
        setState(() {});
        checkedValue == false ? checkedValue = true : checkedValue = false;
        setState(() {});
      },
      title: Text(
        widget.title,
        style: Styles.textStyle16.copyWith(
          color: textColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      //contentPadding: EdgeInsets.zero,
      checkboxShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.sp),
        side: const BorderSide(color: Colors.red),
      ),
      activeColor: kPrimaryColor,
     controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
