import 'package:demo_seller_app/wifgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   bool _checkbox = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
                "Sign In",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    height: 1.6.h),
              ),
              Text(
                "Welcome back, Let's sign in to continu",
                style: TextStyle(fontSize: 14.sp, height: 1.6.h),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              Text(
                "Email / phone",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    height: 1.6.h),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              AuthTextField(hintText: "Enter your Email or phone"),
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
              Row(
                children: [
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
