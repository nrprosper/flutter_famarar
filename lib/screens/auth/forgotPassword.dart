import 'package:famarar/screens/auth/resetPassword.dart';
import 'package:famarar/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 24.0,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      DTexts.forgotPassword,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 8.0),
                      child: Text(
                        DTexts.forgotPasswordDescription,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),

                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Form(
                              key: _formKey,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.mail),
                                    hintText: DTexts.emailPlaceholder
                                ),
                              )
                          ),
                          SizedBox(
                            height: 56.0,
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPassword()));
                                },
                                child: Text(DTexts.sendEmail)
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
