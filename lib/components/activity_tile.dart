import 'package:famarar/utils/colors.dart';
import 'package:flutter/material.dart';

class ActivityTile extends StatelessWidget {
  const ActivityTile({
    super.key,
    required this.title,
    this.description,
    this.time
  });

  final String title;
  final String? description;
  final String? time;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontWeight: FontWeight.w500)),
        if (description != null) Text(description!, style: TextStyle(color: DColors.gray),),
        if (time != null) Text(time!,  style: TextStyle(color: DColors.gray)),
      ],
    );
  }
}
