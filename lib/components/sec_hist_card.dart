import 'package:famarar/utils/colors.dart';
import 'package:famarar/utils/constants/app_sizes.dart';
import 'package:famarar/utils/helpers.dart';
import 'package:famarar/utils/status.dart';
import 'package:flutter/material.dart';


class SecHistCard extends StatelessWidget {
  const SecHistCard({
    super.key,
    required this.title,
    required this.description,
    required this.time,
    this.status = Status.good
  });

  final String title;
  final String description;
  final String time;
  final Status status;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: DAppSizes.paddingMedium,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: DAppSizes.spacingMedium,
        children: [
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
                color: getIconBgColor(status),
                shape: BoxShape.circle
            ),
            child: Icon(
              getIcon(status),
              color: getIconColor(status),
            ),
          ),
          Expanded(
            child: Column(
              spacing: DAppSizes.spacingExtraSmall,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: DColors.textDark,
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    color: DColors.grayBlack,
                  ),
                ),
                Text(
                  time,
                  style: TextStyle(
                    color: DColors.gray,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
