import 'package:demo_seller_app/general/theme_style.dart';
import 'package:demo_seller_app/wifgets/app_custom_button.dart';
import 'package:demo_seller_app/wifgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.1,
              ),
              Image.asset(
                "assets/images/app_logo.png",
                height: 40.h,
                width: 40.w,
              ),
              SizedBox(
                height: height * 0.035,
              ),
              Text(
                "Create Account",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    height: 1.6.h),
              ),
              Text(
                "Create an account to continue!",
                style: TextStyle(fontSize: 14.sp, height: 1.6.h),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              Text(
                "Shop Name",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    height: 1.6.h),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              AuthTextField(hintText: "Enter your Shop Name"),
              SizedBox(
                height: height * 0.025,
              ),
              Text(
                "User Name",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    height: 1.6.h),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              AuthTextField(hintText: "Enter User Name"),
              SizedBox(
                height: height * 0.025,
              ),
              Text(
                "Email / Phone",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    height: 1.6.h),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              AuthTextField(hintText: "Enter your Email / Phone"),
              SizedBox(
                height: height * 0.025,
              ),
              Text(
                "Password",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    height: 1.6.h),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              AuthTextField(hintText: "Enter your password"),
              SizedBox(
                height: height * 0.025,
              ),
              Text(
                "Confirm Password",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    height: 1.6.h),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              AuthTextField(hintText: "Enter your Confirm password"),
              SizedBox(
                height: height * 0.025,
              ),
              AppCustomButton(
                backgroundColor: ThemeStyle.primaryColor,
                text: "SIGN UP",
                borderColor: ThemeStyle.primaryColor,
                textColor: ThemeStyle.white,
                onTap: () {
                  print("object");
                },
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Row(
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                        color: ThemeStyle.lightgrey,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(
                        color: ThemeStyle.primaryColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.025,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
