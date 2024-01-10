import 'dart:js';

import 'package:cursive/core/app_export.dart';
import 'package:flutter/material.dart';

class CursiveletterScreen extends StatelessWidget {
  const CursiveletterScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: mediaQueryData.size.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 9.v),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup1,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 92.v),
                          Text(
                            "Copy the Letter",
                            style: theme.textTheme.titleLarge,
                          ),
                          SizedBox(height: 96.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 86.h),
                              child: Text(
                                "Cursive",
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ),
                          SizedBox(height: 308.v),
                          _buildRowWithImages(context),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                      imagePath: ImageConstant.imgBackButton,
                      height: 2.v,
                      width: 23.h,
                      alignment: Alignment.centerLeft,
                      onTap: () {
                        onTapImgBackButton(context);
                      }),
                  CustomImageView(
                    imagePath: ImageConstant.imgEraser,
                    height: 75.adaptSize,
                    width: 75.adaptSize,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(left: 114.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPencil,
                    height: 94.v,
                    width: 51.h,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(right: 111.h),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowWithImages(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUndo,
            height: 59.v,
            width: 109.h,
            margin: EdgeInsets.only(
              top: 8.v,
              bottom: 17.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgNext,
            height: 84.v,
            width: 102.h,
          ),
        ],
      ),
    );
  }
}

onTapImgBackButton(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.pageoneScreen);
}
