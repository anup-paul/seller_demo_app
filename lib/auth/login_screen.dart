import 'package:demo_seller_app/auth/forgot_password_screen.dart';
import 'package:demo_seller_app/auth/register_screen.dart';
import 'package:demo_seller_app/general/theme_style.dart';
import 'package:demo_seller_app/wifgets/app_custom_button.dart';
import 'package:demo_seller_app/wifgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

bool rememberMe = false;

class _LoginScreenState extends State<LoginScreen> {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                          value: rememberMe,
                          onChanged: (bool? newValue) {
                            setState(() {
                              rememberMe = newValue!;
                            });
                          }),
                      Text(
                        "Remember me",
                        style: TextStyle(
                            color: ThemeStyle.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const ForgotPassword())));
                    },
                    child: Text(
                      "Forget Password ?",
                      style: TextStyle(
                          color: ThemeStyle.primaryColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.025,
              ),
              AppCustomButton(
                backgroundColor: ThemeStyle.primaryColor,
                text: "Login",
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
                    "Don't have an account? ",
                    style: TextStyle(
                        color: ThemeStyle.lightgrey,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => RegisterScreen())));
                    },
                    child: Text(
                      "Register Now",
                      style: TextStyle(
                          color: ThemeStyle.primaryColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
