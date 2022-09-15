import 'package:demo_seller_app/general/theme_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthTextField extends StatelessWidget {
  AuthTextField({
    Key? key,
    // required this.width,
    //required this.labelText,
    required this.hintText,
  });

  //final double width;
  //final String labelText;
  final String hintText;
  // Widget prefixImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      child: TextField(
        textInputAction: TextInputAction.next,
        cursorColor: ThemeStyle.black,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: ThemeStyle.lightgrey, fontSize: 14.sp),
          fillColor: ThemeStyle.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(7.r),
            ),
            borderSide: const BorderSide(
              color: ThemeStyle.enableBorderColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(7.r),
            ),
            borderSide: const BorderSide(
              color: ThemeStyle.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
