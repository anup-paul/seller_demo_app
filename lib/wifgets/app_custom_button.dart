import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCustomButton extends StatelessWidget {
  AppCustomButton({
    required this.text,
    required this.onTap,
    required this.backgroundColor,
    required this.borderColor,
    required this.textColor,
  });

  final String text;
  Color backgroundColor, borderColor, textColor;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: backgroundColor,
        side: BorderSide(color: borderColor, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.r),
        ),
        //maximumSize: const Size(0, 0)
        // primary: const Color(0xFFFEB716),
        minimumSize: Size(double.infinity, 50.h),
      ),
      onPressed: onTap,
      child: Text(
        text,
        style: TextStyle(
            color: textColor, fontSize: 16.sp, fontWeight: FontWeight.bold),
      ),
    );
  }
}
