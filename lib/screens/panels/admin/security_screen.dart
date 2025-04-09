import 'package:famarar/components/appbar.dart';
import 'package:famarar/components/sec_hist_card.dart';
import 'package:famarar/components/section.dart';
import 'package:famarar/components/security_status.dart';
import 'package:famarar/utils/colors.dart';
import 'package:famarar/utils/constants/app_sizes.dart';
import 'package:famarar/utils/constants/texts.dart';
import 'package:famarar/utils/status.dart';
import 'package:flutter/material.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppbar(
          title: DTexts.securityTitle,
          description: DTexts.securityTitleDescr
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: DAppSizes.spacingMedium, vertical: DAppSizes.spacingMedium),
          child: Column(
            spacing: DAppSizes.spacingLarge,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: DAppSizes.paddingMedium,
                    child: Column(
                      spacing: DAppSizes.spacingMedium,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: DAppSizes.spacingMedium,
                          children: [
                            Container(
                              height: 36.0,
                              width: 36.0,
                              decoration: BoxDecoration(
                                  color: DColors.successBg,
                                  shape: BoxShape.circle
                              ),
                              child: Icon(
                                Icons.shield_outlined,
                                color: DColors.success,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Security Status",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15.0
                                    ),
                                  ),
                                  Text(
                                    "System is secure and compliant",
                                    style: TextStyle(
                                      color: DColors.gray
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        // In your security_screen.dart, adjust the grid items like this:
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: const [
                                  SizedBox(
                                    height: 66,
                                    child: SecurityStatus(label: 'Data Encryption'),
                                  ),
                                  SizedBox(height: DAppSizes.spacingMedium),
                                  SizedBox(
                                    height: 66,
                                    child: SecurityStatus(label: 'Access Control'),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: DAppSizes.spacingLarge),
                            Expanded(
                              child: Column(
                                children: const [
                                  SizedBox(
                                    height: 66,
                                    child: SecurityStatus(label: 'Audit Logs'),
                                  ),
                                  SizedBox(height: DAppSizes.spacingMedium),
                                  SizedBox(
                                    height: 66,
                                    child: SecurityStatus(label: 'Vulnerability Scan', status: Status.warning),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Section(
                  title: DTexts.recentSecAct,
                  body: Card(
                    child: Column(
                      children: [
                        SecHistCard(
                          title: DTexts.multipleAtt,
                          description: DTexts.multipleAttDesc,
                          time: DTexts.multipleAttTim,
                          status: Status.warning,
                        ),
                        SecHistCard(
                          title: DTexts.dataAccess,
                          description: DTexts.dataAccessDesc,
                          time: DTexts.dataAccessTime,
                          status: Status.bad,
                        )
                      ],
                    ),
                  )
              ),

              Section(
                  title: 'Privacy Metrics',
                  body: Row(
                    children: [
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: DAppSizes.paddingMedium,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: DAppSizes.paddingMedium,
                                    decoration: BoxDecoration(
                                      borderRadius: DAppSizes.borderRadiusMedium,
                                      color: Colors.white,
                                      border: Border.all(
                                          color: DColors.lightGray
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          softWrap: true,
                                          overflow: TextOverflow.visible,
                                          "Data Protection",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15.0
                                          ),
                                        ),
                                        Row(
                                          spacing: 8.0,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                'Encryption Level',
                                                style: TextStyle(
                                                    color: DColors.gray
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                softWrap: true,
                                                '256-bit',
                                                style: TextStyle(
                                                    color: DColors.primary
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          spacing: 8.0,
                                          children: [
                                            Text(
                                              'Last Audit',
                                              style: TextStyle(
                                                  color: DColors.gray
                                              ),
                                            ),
                                            Text(
                                              '2 days ago',
                                              style: TextStyle(
                                                  color: DColors.textDark
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
              ),

              SizedBox(
                height: DAppSizes.buttonHeight,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => {},
                    child: Text("Run Security Audit")
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
