import 'package:cursive/core/app_export.dart';
import 'package:cursive/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PagetwoScreen extends StatelessWidget {
  const PagetwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.amber100,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgPagetwo),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 34.h, vertical: 47.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgBackButton,
                          height: 2.v,
                          width: 23.h,
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapImgBackButton(context);
                          }),
                      SizedBox(height: 53.v),
                      Container(
                          width: 206.h,
                          margin: EdgeInsets.only(left: 40.h, right: 44.h),
                          child: Text("How would you like to write your words?",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 78.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: 90.h,
                              margin: EdgeInsets.only(left: 23.h),
                              child: Text("Pick a Category",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleLarge))),
                      SizedBox(height: 63.v),
                      Align(),
                      CustomElevatedButton(
                          height: 88.v,
                          text: "Letters",
                          margin: EdgeInsets.only(left: 39.h, right: 43.h),
                          buttonStyle: CustomButtonStyles.fillPrimaryTL17,
                          alignment: Alignment.center,
                          onPressed: () {
                            onTapTxtLettersButton(context);
                          }),
                      SizedBox(height: 40.v),
                      CustomElevatedButton(
                          height: 88.v,
                          text: "Words",
                          margin: EdgeInsets.only(left: 39.h, right: 43.h),
                          buttonStyle: CustomButtonStyles.fillPrimaryTL17,
                          alignment: Alignment.center,
                          onPressed: () {
                            onTapTxtWordsButton(context);
                          }),
                      SizedBox(height: 20.v)
                    ])))));
  }

  /// Navigates to the pagethreeScreen when the action is triggered.

  onTapImgBackButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pageoneScreen);
  }

  onTapTxtLettersButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pagethreeScreen);
  }

  /// Navigates to the pagethreeScreen when the action is triggered.
  onTapTxtWordsButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pagethreeScreen);
  }
}
