import 'package:flutter/material.dart';
//  These are Must Used 
// import 'package:mindshield/Utilities/constants/colors.dart';
// import 'package:mindshield/Utilities/constants/sizes.dart';




class UBottemSheetTheme {
  UBottemSheetTheme._();

  static BottomSheetThemeData lightBottemSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  static BottomSheetThemeData darkBottemSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
