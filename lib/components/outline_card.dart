import 'package:famarar/utils/colors.dart';
import 'package:famarar/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class OutlineCard extends StatelessWidget {
  const OutlineCard({
    super.key,
    required this.child,
    this.height = 66.0,
    this.padding = DAppSizes.paddingMedium
  });
  final Widget child;
  final double height;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: DAppSizes.borderRadiusMedium,
            border: Border.all(color: DColors.lightGray)
        ),
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }

}
