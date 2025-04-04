import 'package:famarar/components/form_separator.dart';
import 'package:famarar/screens/auth/components/authTitle.dart';
import 'package:famarar/screens/auth/forgotPassword.dart';
import 'package:famarar/screens/auth/signup.dart';
import 'package:famarar/screens/panels/layout.dart';
import 'package:famarar/utils/colors.dart';
import 'package:famarar/utils/constants/images.dart';
import 'package:famarar/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 24.0,
            children: [
              AuthTitle(title: DTexts.welcome, description: DTexts.loginDescription),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  spacing: 30.0,
                  children: [
                    Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                hintText: DTexts.emailPlaceholder
                              ),
                            ),
                            const SizedBox(height: 20),
                            Column(
                              spacing: 4.0,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.key),
                                      hintText: DTexts.passwordPlaceholder,
                                      suffixIcon: Icon(Icons.visibility_off)
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword()));
                                  },
                                  child: Text(
                                    DTexts.forgotPassword,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: DColors.link
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              height: 56.0,
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Layout()));
                                  },
                                  child: Text(DTexts.signIn)
                              ),
                            ),
                          ],
                        )
                    ),
                    const FormSeparator(),
                    Column(
                      spacing: 24.0,
                      children: [
                        SizedBox(
                          height: 56.0,
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () => {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: 14.0,
                                children: [
                                  Image.asset(
                                    DImages.google,
                                    width: 20,
                                    height: 20,
                                  ),
                                  Text(DTexts.signInG)
                                ],
                              )
                          ),
                        ),
                        SizedBox(
                          height: 56.0,
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () => {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: 14.0,
                                children: [
                                  Image.asset(
                                    DImages.facebook,
                                    width: 20,
                                    height: 20,
                                  ),
                                  Text(DTexts.signInF)
                                ],
                              )
                          ),
                        ),
                        SizedBox(
                          height: 56.0,
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () => {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: 14.0,
                                children: [
                                  Image.asset(
                                    DImages.apple,
                                    width: 20,
                                    height: 20,
                                  ),
                                  Text(DTexts.signInA)
                                ],
                              )
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 12.0,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 5.0,
                          children: [
                            Text(DTexts.dontHaveAccount),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Signup())
                                );
                              },
                              child: Text(
                                DTexts.signUp,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: DColors.link
                                ),
                              ),
                            )
                          ],
                        ),
                        Text(
                            DTexts.agreeSignInText,
                          textAlign: TextAlign.center,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
