import 'package:flutter_appnavigation/login.dart';
import 'package:flutter_appnavigation/okay.dart';
import 'package:flutter_appnavigation/registration.dart';
import 'package:flutter_appnavigation/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appnavigation/helper.dart';

void main() {
  runApp(Homepage());
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistraionScreen.id: (context) => RegistraionScreen(),
        Okay.id: (context) => Okay(),
      },


    );
  }
}
