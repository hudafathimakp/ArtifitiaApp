import 'package:artifitia_app/app/common_widget/common_text/common_text.dart';
import 'package:artifitia_app/app/constants/colors.dart';
import 'package:artifitia_app/app/modules/splash/views/widget/splash_page.dart';
import 'package:artifitia_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: (index) {
              controller.currentPage.value = index;
            },
            children: [
              SplashPage(
                pageno: '1',
                buttonText: 'Skip',
                ontap: () {},
                imagePath: "asset/images/splashscreen1.png",
                title1: 'Choose Products\n',
                title2: 'STYLES',
                description:
                    'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
              ),
              SplashPage(
                pageno: '2',
                buttonText: 'Skip',
                ontap: () {},
                imagePath: "asset/images/splashscreen2.png",
                title1: 'Make Payment\n',
                title2: 'COLLECTIONS',
                description:
                    'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
              ),
              SplashPage(
                pageno: '3',
                buttonText: 'Skip',
                ontap: () {},
                imagePath: "asset/images/splashscreen3.png",
                title1: 'Get Your Order\n',
                title2: 'YOUR LOOK',
                description:
                    'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() {
                  return controller.currentPage.value == 0
                      ? NormalText(text: '', color: AppColor.text1)
                      : TextButton(
                          onPressed: () {
                            controller.pageController.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            );
                          },
                          child: NormalText(
                            text: 'Prev',
                            color: AppColor.text1,
                          ),
                        );
                }),
                SmoothPageIndicator(
                  controller: controller.pageController,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    // dotColor: AppColor.pointTextColor,
                    dotHeight: 8,
                    dotWidth: 8,
                    activeDotColor: AppColor.pointTextColor,
                  ),
                ),
                Obx(() {
                  return controller.currentPage.value == 2
                      ? TextButton(
                          child: NormalText(
                            text: 'Get Started',
                            color: AppColor.primary,
                          ),
                          onPressed: () {
                            Get.toNamed(Routes.LOGIN);
                          },
                        )
                      : TextButton(
                          child: NormalText(
                            text: 'Next',
                            color: AppColor.primary,
                          ),
                          onPressed: () {
                            controller.pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            );
                          },
                        );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
