import 'package:demo_seller_app/auth/login_screen.dart';
import 'package:demo_seller_app/general/theme_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:introduction_screen/introduction_screen.dart';

class IntroductionScreem extends StatelessWidget {
  IntroductionScreem({Key? key}) : super(key: key);

  // final List<PageViewModel> pages = [
  //   PageViewModel(
  //     titleWidget: const Text(
  //       "Shop You Love",
  //       style: TextStyle(
  //           color: ThemeStyle.black, fontSize: 28, fontWeight: FontWeight.bold),
  //     ),
  //     body: "",
  //     image: Center(
  //       child: Padding(
  //         padding: EdgeInsets.only(top: 100..h),
  //         child: Image.asset(
  //           "assets/images/on_boarding_one.png",
  //           height: 250.h,
  //           width: 250.w,
  //         ),
  //       ),
  //     ),
  //     decoration: const PageDecoration(
  //       titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //     ),
  //     footer: const Text(""),
  //   ),
  //   PageViewModel(
  //     titleWidget: const Text(
  //       "Delivered To You",
  //       style: TextStyle(
  //           color: ThemeStyle.black, fontSize: 28, fontWeight: FontWeight.bold),
  //     ),
  //     body: "",
  //     image: Center(
  //       child: Padding(
  //         padding: EdgeInsets.only(top: 100..h),
  //         child: Image.asset(
  //           "assets/images/on_boarding_tow.png",
  //           height: 250.h,
  //           width: 250.w,
  //         ),
  //       ),
  //     ),
  //     decoration: const PageDecoration(
  //       titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //     ),
  //     footer: const Text(""),
  //   ),
  //   PageViewModel(
  //     titleWidget: const Text(
  //       "So You Can Enjoy",
  //       style: TextStyle(
  //           color: ThemeStyle.black, fontSize: 28, fontWeight: FontWeight.bold),
  //     ),
  //     body: "",
  //     image: Center(
  //       child: Padding(
  //         padding: EdgeInsets.only(top: 100..h),
  //         child: Image.asset(
  //           "assets/images/on_boarding_three.png",
  //           height: 250.h,
  //           width: 250.w,
  //         ),
  //       ),
  //     ),
  //     decoration: const PageDecoration(
  //       titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //     ),
  //     footer: const Text(""),
  //   ),
  // ];

  final List<PageViewModel> pages = [
    PageViewModel(
        body:
            "Create a unique emotional story that\ndescribe better then words",
        title: "Building Better Workplaces\nOne Team at a Time",
        image: Image.asset(
          "assets/images/on_boarding_one.png",
          height: 275,
          width: 280,
        ),
        footer: const Text("")),
    PageViewModel(
        body:
            "Create a unique emotional story that\ndescribe better then words",
        title: "Building Better Workplaces\nOne Team at a Time",
        image: Image.asset(
          "assets/images/on_boarding_tow.png",
          height: 275,
          width: 280,
        ),
        footer: const Text("")),
    PageViewModel(
        body:
            "Create a unique emotional story that\ndescribe better then words",
        title: "Building Better Workplaces\nOne Team at a Time",
        image: Image.asset(
          "assets/images/on_boarding_three.png",
          height: 275,
          width: 280,
        ),
        footer: const Text("footer"))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
          pages: pages,
          dotsDecorator: DotsDecorator(
            size: Size(10.w, 10.h),
            color: ThemeStyle.lightgrey,
            activeSize: Size.square(10.sp),
            activeColor: ThemeStyle.primaryColor,
          ),
          showDoneButton: true,
          done: Image.asset(
            "assets/images/on_boarding_arrow_next.png",
            height: 48.h,
            width: 48.w,
          ),
          showSkipButton: true,
          skip: const Text(
            "Skip",
            style: TextStyle(fontSize: 14, color: ThemeStyle.lightgrey),
          ),
          showNextButton: true,
          next: Image.asset(
            "assets/images/on_boarding_arrow_next.png",
            height: 48.h,
            width: 48.w,
          ),
          onDone: () => onDone(context)),
    );
  }

  void onDone(context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LoginScreen()));
  }
}
