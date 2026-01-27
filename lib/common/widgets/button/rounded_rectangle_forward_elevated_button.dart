import 'package:flutter/material.dart';
import 'package:mindshield/Utilities/constants/colors.dart';

class UElevatedButton extends StatelessWidget {
  const UElevatedButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.backgroundColor,
    this.textColor,
    this.showBorder = true,
    this.elevation = 2,
  });

  final VoidCallback onPressed;
  final Widget child;

  final Color? backgroundColor;
  final Color? textColor;
  final bool showBorder;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380,
      child: ElevatedButton(
        onPressed: onPressed,

        // ✅ ONLY ButtonStyle (no styleFrom)
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(
            backgroundColor ?? UColors.bprimary,
          ),

          elevation: WidgetStateProperty.all(elevation),

          // side: WidgetStateProperty.all(
          //   showBorder
          //       ? BorderSide(color: UColors.textPrimary800)
          //       : BorderSide.none,
          // ),

          padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(vertical: 16),
          ),

          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),

          // 🔴 press / click effect COMPLETELY OFF
          overlayColor: WidgetStateProperty.all(
            const Color.fromARGB(29, 255, 255, 255),
          ),
          splashFactory: NoSplash.splashFactory,
        ),

        child: DefaultTextStyle(
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          child: child,
        ),
      ),
    );
  }
}
