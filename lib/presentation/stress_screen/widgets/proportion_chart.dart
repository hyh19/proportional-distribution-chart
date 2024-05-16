import 'package:flutter/cupertino.dart';
import 'package:proportional_distribution_chart/core/app_export.dart';

import 'proportion_chart_data.dart';

// ignore_for_file: must_be_immutable
class ProportionChart extends StatelessWidget {
  final ProportionChartData data;

  ProportionChart({required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildTitle(),
        SizedBox(height: 13.v),
        _buildColors(),
        SizedBox(height: 12.v),
        _buildDetails()
      ],
    );
  }

  Text _buildTitle() {
    return Text(
      data.title,
      style: TextStyle(
        color: Color(0xFF1C1C26),
        fontSize: 14,
        fontFamily: 'MiSans VF',
        fontWeight: FontWeight.w500,
        height: 0,
        letterSpacing: 0.30,
      ),
    );
  }

  Widget _buildColors() {
    return SizedBox(
      height: 56.v,
      child: Row(
        children: data.items.map((item) {
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
      height: 42.v,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: data.items.map((item) {
          return Expanded(flex: 1, child: _buildDetailItem(item));
        }).toList(),
      ),
    );
  }

  Widget _buildDetailItem(ProportionChartItem item) {
    return Column(
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
                style: TextStyle(
                  color: Color(0xFF1C1C26).withOpacity(0.4),
                  fontSize: 12,
                  fontFamily: 'MiSans VF',
                  fontWeight: FontWeight.w300,
                  height: 0,
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 4.v),
        Text(
          item.value,
          style: TextStyle(
            color: Color(0xFF1C1C26),
            fontSize: 14,
            fontFamily: 'MiSans VF',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        )
      ],
    );
  }
}
