import 'package:famarar/utils/constants/texts.dart';
import 'package:famarar/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:famarar/utils/constants/app_sizes.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class AddUserModal extends StatelessWidget {
  const AddUserModal({super.key});

  @override
  Widget build(BuildContext context) {
    String initialCountry = 'RW';

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(DAppSizes.radius)),
      child: Padding(
        padding: const EdgeInsets.all(DAppSizes.spacingMedium),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Add New User", style: Theme.of(context).textTheme.titleMedium),
                IconButton(
                    onPressed: () {Navigator.pop(context);}, icon: Icon(Icons.close)
                )
              ],
            ),
            Theme(
                data: Theme.of(context).copyWith(
                  inputDecorationTheme: DThemes.inputDecorationThemePadded,
                ), 
                child: Form(
                    child: Column(
                      spacing: DAppSizes.spacingMedium,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Enter full name"
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Enter Email address"
                          ),
                        ),
                        IntlPhoneField(
                            initialCountryCode: initialCountry,
                            decoration: InputDecoration(
                                hintText: '791154300'
                            )
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Facility"
                          ),
                        ),

                        SizedBox(
                          height: 56.0,
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () => {},
                              child: Text(DTexts.addUserBtn)
                          ),
                        )
                      ],
                    )
                )
            )
          ],
        ),
      ),
    );
  }
}
