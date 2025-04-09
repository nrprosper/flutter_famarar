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
