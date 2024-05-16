import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'widgets/userprofilesection_item_widget.dart';

class StressScreen extends StatelessWidget {
  const StressScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "压力阶段总计",
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 13.v),
              _buildRowViewSection(context),
              SizedBox(height: 12.v),
              _buildUserProfileSection(context)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowViewSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 56.v,
          width: 117.h,
          decoration: BoxDecoration(
            color: appTheme.deepOrange200,
            borderRadius: BorderRadius.circular(
              16.h,
            ),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: Container(
            height: 56.v,
            width: 100.h,
            decoration: BoxDecoration(
              color: appTheme.deepOrange200.withOpacity(0.53),
              borderRadius: BorderRadius.circular(
                16.h,
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: Container(
            height: 56.v,
            width: 70.h,
            decoration: BoxDecoration(
              color: appTheme.cyan300.withOpacity(0.53),
              borderRadius: BorderRadius.circular(
                16.h,
              ),
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgClose,
          height: 56.v,
          width: 45.h,
          radius: BorderRadius.circular(
            16.h,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfileSection(BuildContext context) {
    return SizedBox(
      height: 39.v,
      child: ListView.separated(
        padding: EdgeInsets.only(right: 108.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 30.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return UserprofilesectionItemWidget();
        },
      ),
    );
  }
}
