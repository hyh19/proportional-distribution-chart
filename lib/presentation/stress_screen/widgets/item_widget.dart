import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

// ignore_for_file: must_be_immutable
class ItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildSizedBox();
  }

  SizedBox buildSizedBox() {
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
                  color: Color(int.parse("0xFFF8A091")),
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Opacity(
                opacity: 0.4,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "过载",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 4.v),
          Text(
            "5%",
            style: theme.textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
