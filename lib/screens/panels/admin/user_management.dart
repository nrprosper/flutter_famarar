import 'package:famarar/components/appbar.dart';
import 'package:famarar/data/models/user.dart';
import 'package:famarar/screens/panels/admin/features/users_table.dart';
import 'package:famarar/utils/colors.dart';
import 'package:famarar/utils/constants/app_sizes.dart';
import 'package:famarar/utils/constants/texts.dart';
import 'package:famarar/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:famarar/data/user_data.dart';
import 'features/add_user_model.dart';

class UserManagement extends StatelessWidget {
  const UserManagement({super.key});

  @override
  Widget build(BuildContext context) {
    List<User> users = demoUsers;

    return Scaffold(
      appBar: DAppbar(title: DTexts.userMgt, description: DTexts.userMgtDescription),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: DAppSizes.spacingCommon, vertical: DAppSizes.spacingMedium),
          child: Column(
            spacing: DAppSizes.spacingLarge,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: DAppSizes.spacingMedium,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: DAppSizes.buttonHeight,
                      child: SearchBar(
                        leading: Icon(
                          Icons.search,
                          color: DColors.gray,
                        ),
                        hintText: DTexts.searchPlaceholder,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: DAppSizes.buttonHeight,
                    child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => const AddUserModal(),
                          );
                        },
                        child: Row(
                          spacing: DAppSizes.spacingExtraSmall,
                          children: [
                            Icon(Icons.add),
                            Text(DTexts.addUserBtn)
                          ],
                        )
                    ),
                  ),
                ],
              ),
              Card(
                child: UsersTable(users: users),
              ),
              Container(
                width: double.infinity,
                padding: DAppSizes.paddingMedium,
                decoration: BoxDecoration(
                  borderRadius: DAppSizes.borderRadiusMedium,
                  color: DColors.primaryBg,
                  border: Border.all(
                    color: DColors.primary
                  ),
                ),
                child: Row(
                  spacing: DAppSizes.spacingMedium,
                  children: [
                    Icon(
                      Icons.person_add_alt_outlined,
                      color: DColors.primary,
                    ),
                    Expanded(
                      child: Column(
                        spacing: DAppSizes.spacingExtraSmall,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            DTexts.bulkInsert,
                            style: TextStyle(
                              color: DColors.critical,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          Text(
                            DTexts.bulkInsertDescr,
                            style: TextStyle(
                                color: DColors.primary,
                            ),
                          ),
                          Theme(
                              data: Theme.of(context).copyWith(
                                outlinedButtonTheme: DThemes.outlinedButtonPrimaryThemeData
                              ),
                              child: Row(
                                spacing: DAppSizes.spacingSmall,
                                children: [
                                  OutlinedButton(
                                      onPressed: () => {},
                                      child: Text(DTexts.import)
                                  ),
                                  OutlinedButton(
                                      onPressed: () => {},
                                      child: Text(DTexts.export)
                                  )
                                ],
                              )
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
