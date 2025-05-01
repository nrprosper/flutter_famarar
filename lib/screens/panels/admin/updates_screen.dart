import 'package:famarar/components/appbar.dart';
import 'package:famarar/components/outline_card.dart';
import 'package:famarar/utils/colors.dart';
import 'package:famarar/utils/constants/app_sizes.dart';
import 'package:famarar/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppbar(
        title: DTexts.systemUpdates,
        description: DTexts.systemUpdatesDesc,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: DAppSizes.spacingMedium,
            vertical: DAppSizes.spacingMedium,
          ),
          child: Card(
            child: Padding(
              padding: DAppSizes.paddingMedium,
              child: Column(
                spacing: DAppSizes.spacingLarge,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            spacing: DAppSizes.spacingMedium,
                            children: [
                              Container(
                                height: 36.0,
                                width: 36.0,
                                decoration: BoxDecoration(
                                  color: DColors.pinkBg,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.storage_outlined,
                                  color: DColors.pink,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "System Status",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15.0,
                                      ),
                                    ),
                                    Text(
                                      "All systems operational",
                                      style: TextStyle(color: DColors.success),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(onTap: () => {}, child: Text("View Details")),
                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            OutlineCard(
                              padding: DAppSizes.paddingCard,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "App Version",
                                    style: TextStyle(
                                      fontSize: DAppSizes.fontSizeSmall,
                                    ),
                                  ),
                                  Text(
                                    "v2.4.1",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            OutlineCard(
                              padding: DAppSizes.paddingCard,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "App Version",
                                    style: TextStyle(
                                      fontSize: DAppSizes.fontSizeSmall,
                                    ),
                                  ),
                                  Text(
                                    "v2.4.1",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
