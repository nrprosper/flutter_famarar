 import 'package:famarar/screens/auth/signin.dart';
import 'package:famarar/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Famarar());
}

class Famarar extends StatelessWidget {
   const Famarar({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: 'Famarar - Your personal family planning companion',
       theme: ThemeData(
         useMaterial3: true,
         inputDecorationTheme: DThemes.inputDecorationTheme,
         elevatedButtonTheme: DThemes.elevatedButtonThemeData,
         outlinedButtonTheme: DThemes.outlinedButtonThemeData

       ),
       debugShowCheckedModeBanner: false,
       home: const Signin(),
     );
   }

 }
