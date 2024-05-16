import 'package:flutter/cupertino.dart';
import 'package:proportional_distribution_chart/core/app_export.dart';

import 'proportion_chart_data.dart';

// ignore_for_file: must_be_immutable
class ProportionChart extends StatelessWidget {
  final ProportionChartData chartModel;

  ProportionChart({required this.chartModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 300.v,
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildTitle(),
          SizedBox(height: 13.v),
          _buildColors(),
          SizedBox(height: 12.v),
          _buildDetails()
        ],
      ),
    );
  }

  Text _buildTitle() {
    return Text(
      chartModel.title,
      style: theme.textTheme.titleSmall,
    );
  }

  Widget _buildColors() {
    return Container(
      height: 56.v,
      child: Row(
        children: chartModel.items.map((item) {
          return _buildColorItem(
              flex: item.percentage.toInt(), color: item.color);
        }).toList(),
      ),
    );
  }

  Expanded _buildColorItem(
      {required int flex,
      required Color color,
      double margin = 3.0,
      double radius = 16.0}) {
    return Expanded(
      flex: flex,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: margin),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(
            radius,
          ),
        ),
      ),
    );
  }

  Widget _buildDetails() {
    return SizedBox(
      height: 45.v,
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
          return SizedBox(
            width: 50.h,
            child: _buildDetailItem(chartModel.items[index]),
          );
        },
      ),
    );
  }

  SizedBox _buildDetailItem(ProportionChartItem item) {
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
                  color: item.color,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  item.description,
                  style: theme.textTheme.bodySmall,
                ),
              )
            ],
          ),
          SizedBox(height: 4.v),
          Text(
            item.value,
            style: theme.textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
