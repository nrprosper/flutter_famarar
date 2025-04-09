import 'package:famarar/utils/colors.dart';
import 'package:famarar/utils/constants/app_sizes.dart';
import 'package:famarar/utils/helpers.dart';
import 'package:famarar/utils/status.dart';
import 'package:flutter/material.dart';

class SecurityStatus extends StatelessWidget {
  const SecurityStatus({
    super.key,
    this.status = Status.good,
    required this.label
  });

  final Status status;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: DAppSizes.borderRadiusMedium,
        border: Border.all(color: DColors.lightGray)
      ),
      child: Padding(
        padding: DAppSizes.paddingMedium,
        child: Row(
          spacing: DAppSizes.spacingSmall,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(getIcon(status), color: getIconColor(status),),
            Expanded(
              child: Text(
                label,
                softWrap: true,
                overflow: TextOverflow.visible,
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
