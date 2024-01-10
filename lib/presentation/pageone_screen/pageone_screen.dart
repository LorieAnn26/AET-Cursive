import 'package:cursive/core/app_export.dart';
import 'package:cursive/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PageoneScreen extends StatelessWidget {
  const PageoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: theme.colorScheme.onPrimary,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimary,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgPageone),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 34.h, vertical: 47.v),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgBackButton,
                              height: 2.v,
                              width: 23.h,
                              onTap: () {
                                onTapImgBackButton(context);
                              }),
                          SizedBox(height: 53.v),
                          Container(
                              width: 189.h,
                              margin: EdgeInsets.only(left: 45.h),
                              child: Text("What would you like \nto do?",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleLarge)),
                          Spacer(),
                          CustomElevatedButton(
                              height: 83.v,
                              text: "Practice",
                              margin: EdgeInsets.only(left: 39.h, right: 43.h),
                              buttonStyle: CustomButtonStyles.fillPrimaryTL17,
                              onPressed: () {
                                onTapPractice(context);
                              },
                              alignment: Alignment.center),
                          SizedBox(height: 41.v),
                          CustomElevatedButton(
                              height: 83.v,
                              text: "Quiz",
                              margin: EdgeInsets.only(left: 39.h, right: 43.h),
                              buttonStyle: CustomButtonStyles.fillPrimaryTL17,
                              alignment: Alignment.center,
                              onPressed: () {
                                onTapTxtQuizButton(context);
                              }),
                          SizedBox(height: 44.v)
                        ])))));
  }

  /// Navigates to the quizScreen when the action is triggered.
  onTapImgBackButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }

  onTapPractice(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pagetwoScreen);
  }

  onTapTxtQuizButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.quizScreen);
  }
}
