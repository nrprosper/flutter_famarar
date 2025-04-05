import 'package:famarar/utils/colors.dart';
import 'package:famarar/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({super.key, required this.label, required this.percentage});

  final String label;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        spacing: DAppSizes.spacingSmall,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                label,
                style: TextStyle(
                  color: DColors.gray,
                  fontSize: DAppSizes.fontSizeSmall
                ),
              ),
              Text(
                "$percentage %",
                style: TextStyle(
                  fontWeight: FontWeight.w500
                ),
              )
            ],
          ),
          ClipRRect(
            borderRadius: DAppSizes.borderRadiusExtraLarge,
            child: LinearProgressIndicator(
              value: percentage/100,
              minHeight: 6,
              valueColor: AlwaysStoppedAnimation(DColors.primary),
              backgroundColor: DColors.lightGray,
            ),
          ),
        ],
      ),
    );
  }
}
