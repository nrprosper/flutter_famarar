import 'package:famarar/utils/constants/texts.dart';
import 'package:flutter/material.dart';

import 'components/authTitle.dart' show AuthTitle;

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 24,
              children: [
                AuthTitle(title: DTexts.newPassword, description: DTexts.newPasswordDes),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Form(
                              child: Column(
                                children: <Widget>[
                                  TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.key),
                                        hintText: DTexts.passwordPlaceholder,
                                        suffixIcon: Icon(Icons.visibility_off)
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.key),
                                        hintText: DTexts.confirmPasswordPlaceholder,
                                        suffixIcon: Icon(Icons.visibility_off)
                                    ),
                                  )
                                ],
                              )
                          ),
                          SizedBox(
                            height: 56.0,
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPassword()));
                                },
                                child: Text(DTexts.resetPassword)
                            ),
                          ),
                        ],
                      ),
                    )
                )
              ],
            ),
          )
      ),
    );
  }
}
