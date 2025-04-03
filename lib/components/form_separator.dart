import 'package:flutter/material.dart';

import '../utils/colors.dart';

class FormSeparator extends StatelessWidget {
  const FormSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: DColors.divider,
            thickness: 2,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            "Or",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16, // Adjust size if needed
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: DColors.divider,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
