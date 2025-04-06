import 'package:famarar/components/activity_tile.dart';
import 'package:famarar/components/appbar.dart';
import 'package:famarar/components/section.dart';
import 'package:famarar/components/system_card.dart';
import 'package:famarar/data/activity_data.dart';
import 'package:famarar/data/system_card_data.dart';
import 'package:famarar/screens/panels/admin/features/statistics.dart';
import 'package:famarar/utils/constants/app_sizes.dart';
import 'package:famarar/utils/constants/texts.dart';
import 'package:famarar/utils/theme.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppbar(title: DTexts.titleDash, description: DTexts.titleDashDescription),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: DAppSizes.spacingLarge, vertical: DAppSizes.spacingMedium),
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
                  body: SizedBox(
                    width: double.infinity,
                    child: Card(
                      child: Padding(
                        padding: DAppSizes.paddingMedium,
                        child: const Statistics(),
                      ),
                    ),
                  )
              ),
              Section(
                  title: "Recent Activity",
                  body: SizedBox(
                    width: double.infinity,
                    child: Card(
                      child: Padding(
                        padding: DAppSizes.paddingMedium,
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          separatorBuilder: (context, index) => const Divider(color: Color(0xFFE5E7EB), height: 24),
                          itemCount: activities.length,
                          itemBuilder: (context, index) {
                            final activity = activities[index];
                            return ActivityTile(
                              title: activity.title,
                              description: activity.description,
                              time: activity.time,
                            );
                          },
                        ),
                      ),
                    ),
                  )
              ),
              Section(
                  title: "Quick Actions",
                  body: Row(
                    spacing: 24.0,
                    children: [
                      Expanded(
                          child: SizedBox(
                            height: DAppSizes.buttonHeight,
                            child: ElevatedButton(
                                onPressed: () => {},
                                child: Text("Add New User")
                            ),
                          )
                      ),
                      Expanded(
                        child: Theme(
                          data: Theme.of(context).copyWith(
                            elevatedButtonTheme: DThemes.greyElevatedButtonThemeData,
                          ),
                          child: SizedBox(
                            height: DAppSizes.buttonHeight,
                            child: ElevatedButton(
                              onPressed: () => {},
                              child: Text("Generate Report"),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
