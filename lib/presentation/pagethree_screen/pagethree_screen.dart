import 'package:cursive/core/app_export.dart';
import 'package:cursive/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PagethreeScreen extends StatelessWidget {
  const PagethreeScreen({Key? key}) : super(key: key);

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
                        image: AssetImage(ImageConstant.imgPagethree),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 34.h, vertical: 48.v),
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
                          SizedBox(height: 52.v),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: 206.h,
                                  margin:
                                      EdgeInsets.only(left: 40.h, right: 44.h),
                                  child: Text(
                                      "How would you like to write your letters?",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.titleLarge))),
                          SizedBox(height: 73.v),
                          Container(
                              width: 80.h,
                              margin: EdgeInsets.only(left: 27.h),
                              child: Text("Choose a Mode",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleLarge)),
                          Spacer(),
                          CustomElevatedButton(
                              height: 43.v,
                              width: 175.h,
                              text: "Cursive",
                              margin: EdgeInsets.only(left: 50.h),
                              onPressed: () {
                                onTapCursive(context);
                              }),
                          SizedBox(height: 29.v),
                          CustomElevatedButton(
                              height: 43.v,
                              width: 175.h,
                              text: "Print",
                              margin: EdgeInsets.only(left: 50.h),
                              onPressed: () {
                                onTapPrint(context);
                              }),
                          SizedBox(height: 73.v)
                        ])))));
  }

  /// Navigates to the cursiveletterScreen when the action is triggered.
  onTapImgBackButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pagetwoScreen);
  }

  onTapCursive(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cursiveletterScreen);
  }

  /// Navigates to the printedlettersScreen when the action is triggered.
  onTapPrint(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.printedlettersScreen);
  }
}
