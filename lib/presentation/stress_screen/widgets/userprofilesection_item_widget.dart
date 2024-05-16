import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class UserprofilesectionItemWidget extends StatelessWidget {
  const UserprofilesectionItemWidget({Key? key})
      : super(
          key: key,
        );

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
                  color: appTheme.deepOrange200,
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
            "5%".toUpperCase(),
            style: theme.textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
