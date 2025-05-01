import 'package:famarar/components/system_card.dart';
import 'package:famarar/utils/colors.dart';
import 'package:famarar/utils/status.dart';
import 'package:flutter/material.dart';

Color getIconColor(Status status) {
  switch (status) {
    case Status.good:
      return DColors.success;
    case Status.warning:
      return DColors.warning;
    case Status.bad:
      return Colors.red;
  }
}

Color getIconBgColor(Status status) {
  switch (status) {
    case Status.good:
      return DColors.successBg;
    case Status.warning:
      return DColors.warningBg;
    case Status.bad:
      return DColors.criticalBg;
  }
}

IconData getIcon(Status status) {
  switch (status) {
    case Status.good:
      return Icons.task_alt;
    case Status.warning:
      return Icons.error_outline_outlined;
    case Status.bad:
      return Icons.error_outline_outlined;
  }
}


Color getBgColor(SystemCardVariant variant) {
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


Color getIconCol(SystemCardVariant variant) {
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