import 'package:famarar/data/models.dart';
import 'package:famarar/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:famarar/utils/constants/app_sizes.dart';

class MetricGrid extends StatelessWidget {
  const MetricGrid({super.key, required this.metrics});

  final List<Metrics> metrics;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: DAppSizes.spacingMedium,
        crossAxisSpacing: DAppSizes.spacingMedium,
        childAspectRatio: 3 / 2,
      ),
      itemCount: metrics.length,
      itemBuilder: (context, index) {
        final metric = metrics[index];
        return Card(
          child: Padding(
            padding: DAppSizes.paddingCard,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: DAppSizes.spacingExtraSmall,
              children: [
                Text(
                  metric.title,
                  style: TextStyle(
                    fontSize: DAppSizes.fontSizeSmall,
                    color: DColors.gray,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '${metric.count}',
                  style: TextStyle(
                    fontSize: DAppSizes.fontSizeLarge,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Row(
                  spacing: 4,
                  children: [
                    Icon(
                      Icons.arrow_upward_rounded,
                      size: 14,
                      color: DColors.success,
                    ),
                    Text(
                      metric.description,
                      style: TextStyle(
                        color: DColors.success,
                        fontSize: DAppSizes.fontSizeSmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
