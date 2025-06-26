import 'package:artifitia_app/app/common_widget/common_text/common_text.dart';
import 'package:artifitia_app/app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../../routes/app_pages.dart';

class SplashPage extends StatelessWidget {
  final String imagePath;
  final String title1;
  final String title2;
  final String pageno;
  final String description;
  final String buttonText;
  final VoidCallback ontap;

  const SplashPage({
    super.key,
    required this.imagePath,
    required this.title1,
    required this.description,
    required this.buttonText,
    required this.ontap,
    required this.title2,
    required this.pageno,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(imagePath, fit: BoxFit.none),
        Positioned(
          top: 4.h,
          right: 2.w,
          left: 2.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonRichText(
                text1: pageno,
                text2: '/3',
                color1: AppColor.black,
              ),

              TextButton(
                onPressed: () {
                  Get.toNamed(Routes.LOGIN);
                },
                child: NormalText(
                  text: 'Skip',
                  color: AppColor.black,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10.h,
          left: 2.w,
          right: 2.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NormalText(text: title1, color: AppColor.black, fontSize: 20.0),

              SizedBox(height: 1.h),
              NormalText(text: description, color: AppColor.greyColor),
              SizedBox(height: 3.h),
            ],
          ),
        ),
      ],
    );
  }
}
