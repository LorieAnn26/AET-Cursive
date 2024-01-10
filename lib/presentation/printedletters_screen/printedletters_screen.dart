import 'package:cursive/core/app_export.dart';
import 'package:cursive/widgets/app_bar/appbar_leading_image.dart';
import 'package:cursive/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PrintedlettersScreen extends StatelessWidget {
  const PrintedlettersScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 24.v),
            child: SizedBox(
              height: 539.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup2,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Copy the Letter",
                            style: theme.textTheme.titleLarge,
                          ),
                          SizedBox(height: 96.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 90.h),
                              child: Text(
                                "Print",
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ),
                          SizedBox(height: 308.v),
                          _buildTwentyFive(context),
                        ],
                      ),
                    ),
                  ),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgBackButton,
        margin: EdgeInsets.fromLTRB(34.h, 27.v, 303.h, 27.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyFive(BuildContext context) {
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
