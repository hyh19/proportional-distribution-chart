import 'package:flutter/material.dart';
import 'package:proportional_distribution_chart/presentation/stress_screen/widgets/chart_widget_model.dart';
import 'package:proportional_distribution_chart/presentation/stress_screen/widgets/my_widget.dart';

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
          body: ChartWidget(
            chartModel: ChartModel(
              title: "压力阶段总计",
              items: [
                Item(
                  percentage: 10,
                  color: "0xFFF8A091",
                  description: "过载",
                  value: "10%",
                ),
                Item(
                  percentage: 20,
                  color: "0x80F8A091",
                  description: "偏高",
                  value: "20%",
                ),
                Item(
                  percentage: 30,
                  color: "0x804AC3E3",
                  description: "正常",
                  value: "30%",
                ),
                Item(
                  percentage: 40,
                  color: "0xFF4AC3E3",
                  description: "优秀",
                  value: "40%",
                ),
              ],
            ),
          )),
    );
  }
}
