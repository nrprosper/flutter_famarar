import 'package:famarar/utils/colors.dart';
import 'package:flutter/material.dart';

class DAppbar extends StatelessWidget implements PreferredSizeWidget {
  const DAppbar({super.key, required this.title, required this.description});

  final String title;
  final String description;


  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 1.2);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: preferredSize.height,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: DColors.grayBlack,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: DColors.gray,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}