import 'package:famarar/components/appbar.dart';
import 'package:famarar/components/section.dart';
import 'package:famarar/data/available_report_data.dart';
import 'package:famarar/data/metric_data.dart';
import 'package:famarar/screens/panels/admin/features/metric_grid.dart';
import 'package:famarar/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:famarar/utils/constants/app_sizes.dart';
import 'package:famarar/utils/constants/texts.dart';

class AnalyticsReportScreen extends StatelessWidget {
  const AnalyticsReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppbar(
        title: DTexts.analyticsTitle,
        description: DTexts.analyticsDescription,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: DAppSizes.spacingMedium,
            vertical: DAppSizes.spacingMedium,
          ),
          child: Column(
            spacing: DAppSizes.spacingLarge,
            children: [
              Section(
                title: DTexts.metricsTitle,
                body: MetricGrid(metrics: metrics),
              ),
              Section(
                title: DTexts.reportsTitle,
                body: Card(
                  child: ListView.builder(
                    itemCount: reports.length,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final report = reports[index];
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        child: Row(
                          spacing: DAppSizes.spacingMedium,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 34,
                              width: 34,
                              decoration: BoxDecoration(
                                color: getBgColor(report.variant),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                report.icon,
                                color: getIconCol(report.variant),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(report.title),
                                  Text(report.description),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.save_alt_rounded),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: DAppSizes.buttonHeight,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    spacing: DAppSizes.spacingSmall,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.bar_chart),
                      Text(DTexts.generateReport),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
