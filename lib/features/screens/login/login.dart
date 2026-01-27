import 'package:flutter/material.dart';
import 'package:mindshield/Utilities/constants/images.dart';
import 'package:mindshield/Utilities/constants/texts.dart';
import 'package:mindshield/Utilities/constants/colors.dart';
// import 'package:mindshield/features/screens/allowNotification/allow_notification.dart';
import 'package:mindshield/Utilities/constants/sizes.dart';
import 'package:mindshield/features/screens/allowNotification/widgets/notify_backward_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: [
              UColors.primary_600, // Teal
              UColors.secondary, // White
            ],
            stops: [0.1, 0.6], // End > Begin Point
          ),
        ),
        child: Stack(
          children: [
            PageView(
              children: [
                NotifyPage(
                  // ! Header
                  image: UImages.loginSplash,
                  title: UTexts.loginTitle,

                  // ! Form

                  // ! Divider

                  // ! Footer
                ),
              ],
            ),
            //  BackWard Button
            NotifyBackButton(),
            // ************************************
          ],
        ),
      ),
    );
  }
}

class NotifyPage extends StatelessWidget {
  const NotifyPage({super.key, required this.image, required this.title});
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: USizes.defaultSpace,
        left: USizes.defaultSpace,
        // top: UDeviceHelper.getAppBarHeight(),
        top: 120,
      ),
      child: Column(
        children: [
          /***************
          * HEADER PART *
           ***************/
          // ! Image
          Center(
            child: SizedBox(
              height: 110,
              width: 90, // image height adjust karo yahan
              child: Image.asset(image, fit: BoxFit.contain),
            ),
          ),

          const SizedBox(height: 5),
          // !  Title
          Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),

          /***************
          * FORM PART *
           ***************/

          /***************
          * DIVIDER PART *
           ***************/

          /***************
          * FOOTER PART *
           ***************/
        ],
      ),
    );
  }
}
