import 'package:flutter/material.dart';
import 'package:mindshield/Utilities/constants/sizes.dart';
import 'package:mindshield/common/widgets/button/circle_elevated_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mindshield/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:mindshield/Utilities/constants/colors.dart';

// Next Button Widget
class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
      // left: 0,
      right: USizes.spaceBtwItems * 1.5,
      bottom: USizes.spaceBtwItems * 3,
      child: UElevatedButton(
        onPressed: controller.nextPage,
        child: SvgPicture.asset(
          "assets/SVG/arrow-right-solid-full.svg",
          width: 24,
          height: 24,
          colorFilter: const ColorFilter.mode(UColors.textWhite, BlendMode.srcIn),
        ),
      ),
    );
  }
}
