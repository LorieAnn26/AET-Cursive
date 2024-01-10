import 'package:cursive/core/app_export.dart';
import 'package:cursive/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgCopyOfCursive,
                      height: 640.v,
                      width: 359.h,
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.symmetric(vertical: 124.v),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Spacer(),
                                CustomElevatedButton(
                                    width: 173.h,
                                    text: "Start",
                                    onPressed: () {
                                      onTapStart(context);
                                    }),
                                SizedBox(height: 27.v),
                                CustomElevatedButton(width: 173.h, text: "Exit")
                              ])))
                ]))));
  }

  /// Navigates to the pageoneScreen when the action is triggered.
  onTapStart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pageoneScreen);
  }
}
