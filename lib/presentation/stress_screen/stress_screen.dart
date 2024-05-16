import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import 'controller/stress_controller.dart';
import 'models/proportional_distribution_chart_item_model.dart';
import 'widgets/userprofilesection_item_widget.dart'; // ignore_for_file: must_be_immutable

class StressScreen extends GetWidget<StressController> {
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
                "lbl".tr,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 13.v),
              _buildRowViewSection(),
              SizedBox(height: 12.v),
              _buildUserProfileSection()
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowViewSection() {
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
  Widget _buildUserProfileSection() {
    return SizedBox(
      height: 45.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(right: 108.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 30.h,
            );
          },
          itemCount: controller.stressModelObj.value
              .proportionalDistributionChartItemList.value.length,
          itemBuilder: (context, index) {
            ProportionalDistributionChartItemModel model = controller
                .stressModelObj
                .value
                .proportionalDistributionChartItemList
                .value[index];
            return SizedBox(
              width: 50.h,
              child: UserprofilesectionItemWidget(model),
            );
          },
        ),
      ),
    );
  }
}
