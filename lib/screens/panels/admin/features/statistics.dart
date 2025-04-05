import 'package:famarar/components/progress_bar.dart';
import 'package:famarar/utils/colors.dart';
import 'package:famarar/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: DAppSizes.spacingLarge,
      children: [
        Expanded(
            child: Column(
              spacing: DAppSizes.spacingMedium,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "User Demographics",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: DColors.grayBlack
                  ),
                ),
                ProgressBar(label: "Rural Users", percentage: 68),
                ProgressBar(label: "Urban Users", percentage: 32)
              ],
            )
        ),
        Expanded(
            child: Column(
              spacing: DAppSizes.spacingMedium,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Feature Usage",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: DColors.grayBlack
                  ),
                ),
                ProgressBar(label: "Voice Guidance", percentage:  75),
                ProgressBar(label: "Offline Access", percentage: 54)
              ],
            )
        ),
      ],
    );
  }
}
