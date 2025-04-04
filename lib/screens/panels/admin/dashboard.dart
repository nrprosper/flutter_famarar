import 'package:famarar/components/section.dart';
import 'package:famarar/components/system_card.dart';
import 'package:famarar/data/system_card_data.dart';
import 'package:famarar/utils/colors.dart';
import 'package:famarar/utils/constants/app_sizes.dart';
import 'package:famarar/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DTexts.titleDash,
              style: TextStyle(
                color: DColors.grayBlack,
                fontWeight: FontWeight.w800
              ),
            ),
            Text(
              DTexts.titleDashDescription,
              style: TextStyle(
                fontSize: 14,
                color: DColors.gray,
                fontWeight: FontWeight.w400
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: DAppSizes.spacingLarge, vertical: DAppSizes.spacingMedium),
          child: Column(
            spacing: DAppSizes.spacingLarge,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Section(
                  title: DTexts.systemOverview,
                  body: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 2,
                    ),
                    itemCount: systemCards.length,
                    itemBuilder: (context, index) {
                      final card = systemCards[index];
                      return SystemCard(
                        title: card.title,
                        count: card.count,
                        icon: card.icon,
                        variant: card.variant,
                      );
                    },
                  )
              ),
              Section(
                  title: DTexts.programStatistics,
                  body: Text("Program statistics content goes here...")
              )
            ],
          ),
        ),
      ),
    );
  }
}
