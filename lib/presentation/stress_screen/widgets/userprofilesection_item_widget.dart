import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../controller/stress_controller.dart';
import '../models/proportional_distribution_chart_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofilesectionItemWidget extends StatelessWidget {
  UserprofilesectionItemWidget(this.userprofilesectionItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ProportionalDistributionChartItemModel userprofilesectionItemModelObj;

  var controller = Get.find<StressController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 38.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 6.adaptSize,
                width: 6.adaptSize,
                margin: EdgeInsets.only(
                  top: 4.v,
                  bottom: 5.v,
                ),
                decoration: BoxDecoration(
                  color: Color(
                      int.parse(userprofilesectionItemModelObj.color.value)),
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Opacity(
                opacity: 0.4,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Obx(
                    () => Text(
                      userprofilesectionItemModelObj.description.value,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 4.v),
          Obx(
            () => Text(
              userprofilesectionItemModelObj.value.value,
              style: theme.textTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }
}
