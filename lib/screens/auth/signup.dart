import 'package:famarar/screens/auth/components/authTitle.dart';
import 'package:famarar/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String initialCountry = 'RW';

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
                AuthTitle(title: DTexts.signUpWithEmail, description: DTexts.signUpDescription),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    spacing: 30.0,
                    children: [
                      Form(
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.person),
                                    hintText: DTexts.userNamePlaceholder
                                ),
                              ),
                              const SizedBox(height: 20),
                              TextFormField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.mail),
                                    hintText: DTexts.emailPlaceholder
                                ),
                              ),
                              const SizedBox(height: 20),
                              IntlPhoneField(
                                initialCountryCode: initialCountry,
                                decoration: InputDecoration(
                                  hintText: '791154300'
                                ),
                              ),
                              const SizedBox(height: 20),
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
                              ),
                              const SizedBox(height: 20),
                              SizedBox(
                                height: 56.0,
                                width: double.infinity,
                                child: ElevatedButton(
                                    onPressed: () => {},
                                    child: Text(DTexts.createAcc)
                                ),
                              ),
                              const SizedBox(height: 50.0),
                              Text(
                                DTexts.agreeSignUp,
                                textAlign: TextAlign.center,
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
      ),
    );
  }
}
