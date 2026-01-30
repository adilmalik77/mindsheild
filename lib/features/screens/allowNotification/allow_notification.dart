import 'package:flutter/material.dart';
import 'package:mindshield/Utilities/constants/sizes.dart';
// import 'package:mindshield/features/screens/onboarding/widgets/onboarding_page.dart';
import 'package:mindshield/Utilities/constants/images.dart';
import 'package:mindshield/Utilities/constants/texts.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:mindshield/Utilities/helpers/device_helpers.dart';
import 'package:mindshield/features/screens/allowNotification/widgets/notify_backward_button.dart';
import 'package:mindshield/features/screens/allowNotification/widgets/notify_next_button.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:mindshield/Utilities/constants/colors.dart';

class AllowNotificationsScreen extends StatelessWidget {
  const AllowNotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [UColors.primary_600, UColors.secondary],
            stops: [0.1, 0.6],
          ),
        ),
        child: Stack(
          children: [
            PageView(
              children: [
                NotifyPage(
                  image: UImages.notify,
                  title: UTexts.notificationTitle,
                  subTitle: UTexts.notificationSubTitle,
                ),
              ],
            ),

            NotifyBackButton(),

            NotifyNextButton(),
          ],
        ),
      ),
    );
  }
}

class NotifyPage extends StatelessWidget {
  const NotifyPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: USizes.defaultSpace,
        left: USizes.defaultSpace,
        // top: UDeviceHelper.getAppBarHeight(),
        top: 170,
      ),
      child: Column(
        children: [
          // Image
          // const SizedBox(height: 150),
          Image.asset(image),
          const SizedBox(height: 70),
          // Title & SubTitle
          Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: TextStyle().copyWith(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: UColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
