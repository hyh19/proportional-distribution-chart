import 'package:flutter/material.dart';
import 'package:proportional_distribution_chart/presentation/stress_screen/widgets/proportion_chart.dart';
import 'package:proportional_distribution_chart/presentation/stress_screen/widgets/proportion_chart_data.dart';

import '../../core/app_export.dart';
import 'controller/stress_controller.dart';

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
            height: 300.v,
            child: ProportionChart(
              chartModel: ProportionChartData(
                title: "压力阶段总计",
                items: [
                  ProportionChartItem(
                    percentage: 10,
                    color: Color(0xFFF8A091),
                    description: "过载",
                    value: "10%",
                  ),
                  ProportionChartItem(
                    percentage: 20,
                    color: Color(0x80F8A091),
                    description: "偏高",
                    value: "20%",
                  ),
                  ProportionChartItem(
                    percentage: 30,
                    color: Color(0x804AC3E3),
                    description: "正常",
                    value: "30%",
                  ),
                  ProportionChartItem(
                    percentage: 40,
                    color: Color(0xFF4AC3E3),
                    description: "优秀",
                    value: "40%",
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
