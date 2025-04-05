import 'package:famarar/utils/colors.dart';
import 'package:famarar/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum SystemCardVariant {
  primary, warning, pink, success
}

class SystemCard extends StatelessWidget {
  const SystemCard({
    super.key,
    required this.title,
    required this.count,
    required this.icon,
    this.variant = SystemCardVariant.primary
  });
  final String title;
  final int count;
  final IconData icon;
  final SystemCardVariant variant;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: DAppSizes.paddingMedium,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: DAppSizes.spacingMedium,
          children: [
            Container(
              height: 34,
              width: 34,
              decoration: BoxDecoration(
                color: _getBgColor(),
                shape: BoxShape.circle
              ),
              child: Icon(
                icon,
                color: _getIconColor(),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: DAppSizes.fontSizeSmall,
                      color: DColors.gray
                  ),
                ),
                Text(
                  _formatNumberWithCommas(count),
                  style: TextStyle(
                      fontSize: DAppSizes.fontSizeMedium,
                      fontWeight: FontWeight.w900
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Color _getBgColor() {
    switch (variant) {
      case SystemCardVariant.primary:
        return DColors.primaryBg;
      case SystemCardVariant.warning:
        return DColors.warningBg;
      case SystemCardVariant.pink:
        return DColors.pinkBg;
      case SystemCardVariant.success:
        return DColors.successBg;
    }
  }


  Color _getIconColor() {
    switch (variant) {
      case SystemCardVariant.primary:
        return DColors.primary;
      case SystemCardVariant.warning:
        return DColors.warning;
      case SystemCardVariant.pink:
        return DColors.pink;
      case SystemCardVariant.success:
        return DColors.success;
    }
  }

  String _formatNumberWithCommas(int number) {
    return NumberFormat('#,###').format(number);
  }

}
