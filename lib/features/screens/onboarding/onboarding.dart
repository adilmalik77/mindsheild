import 'package:flutter/material.dart';
import 'package:mindshield/Utilities/constants/images.dart';
import 'package:mindshield/Utilities/constants/texts.dart';
// import 'package:mindshield/Utilities/helpers/device_helpers.dart';
import 'package:mindshield/features/screens/onboarding/widgets/onboarding_page.dart';
import 'package:mindshield/features/screens/onboarding/widgets/on_boarding_dot_indicators.dart';
import 'package:mindshield/features/screens/onboarding/widgets/onBoardingNextButton.dart';
import 'package:mindshield/features/screens/onboarding/widgets/skipButton.dart';
import 'package:get/get.dart';
import 'package:mindshield/features/authentication/controllers/onboarding/onboarding_controller.dart';
// import 'package:mindshield/common/widgets/button/elevated_button.dart';
import 'package:mindshield/Utilities/constants/sizes.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:mindshield/Utilities/helpers/device_helpers.dart';
import 'package:mindshield/common/widgets/button/baclward_elevated_button.dart';
import 'package:mindshield/Utilities/constants/colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: (index) {
              controller.updatePageIndicator(index);

              // Hide back button only on first page
              controller.showBackButton.value = index != 0;
            },
            children: [
              OnboardingPage(
                image: UImages.onboarding1,
                title: UTexts.onboardingTitle1,
                subTitle: UTexts.onboardingSubTitle1,
              ),
              OnboardingPage(
                image: UImages.onboarding2,
                title: UTexts.onboardingTitle2,
                subTitle: UTexts.onboardingSubTitle2,
              ),
              OnboardingPage(
                image: UImages.onboarding3,
                title: UTexts.onboardingTitle3,
                subTitle: UTexts.onboardingSubTitle3,
              ),
              OnboardingPage(
                image: UImages.onboarding4,
                title: UTexts.onboardingTitle4,
                subTitle: UTexts.onboardingSubTitle4,
              ),
              OnboardingPage(
                image: UImages.onboarding5,
                title: UTexts.onboardingTitle5,
                subTitle: UTexts.onboardingSubTitle5,
              ),
              OnboardingPage(
                image: UImages.onboarding6,
                title: UTexts.onboardingTitle6,
                subTitle: UTexts.onboardingSubTitle6,
              ),
            ],
          ),

          // Indicator Dots
          OnBoardingDotNavigation(),
          // Next Button
          OnBoardingNextButton(),
          // Skip Button
          SkipButton(),

          OnboardingBackButton(),
        ],
      ),
    );
  }
}

class OnboardingBackButton extends StatelessWidget {
  const OnboardingBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return Obx(() {
      // Show/hide button based on controller
      if (!controller.showBackButton.value) return const SizedBox();

      return Positioned(
        left: USizes.spaceBtwItems * 1.5,
        bottom: USizes.spaceBtwItems * 3,
        child: UBackElevatedButton(
          onPressed: controller.backPage,
          child: SvgPicture.asset(
            "assets/SVG/arrow-left-solid-full.svg",
            width: 24,
            height: 24,
            colorFilter: const ColorFilter.mode(
              UColors.textWhite,
              BlendMode.srcIn,
            ),
          ),
        ),
      );
    });
  }
}
