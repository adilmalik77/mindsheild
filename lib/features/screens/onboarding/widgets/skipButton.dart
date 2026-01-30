import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindshield/Utilities/constants/colors.dart';
import 'package:mindshield/Utilities/constants/sizes.dart';
import 'package:mindshield/Utilities/helpers/device_helpers.dart';
import 'package:mindshield/features/authentication/controllers/onboarding/onboarding_controller.dart';

// Skip Button Widget
class SkipButton extends StatelessWidget {
  const SkipButton({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Obx(
      () => controller.currentIndex.value == 5 ? SizedBox() :
      Positioned(
        top: UDeviceHelper.getAppBarHeight(),
        right: USizes.spaceBtwItems,
        child: TextButton(
          onPressed: controller.skipPage,
          child: Text(
            'Skip>>',
            style: TextStyle(
              color: UColors.bprimary,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
