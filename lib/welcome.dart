import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appnavigation/login.dart';
import 'package:flutter_appnavigation/registration.dart';
import 'package:flutter_appnavigation/helper.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60.0,
                    child:Image.asset('images/yes.png'),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Friend Chat', style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                    color:Colors.yellow[300],
                  ),
                  ),
                ),

              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundedButton(
                title: "Register",
                colour: Colors.cyan,
                onPressed: (){
                  Navigator.pushNamed(context,RegistraionScreen.id);

                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundedButton(
                title: "Log In",
                colour: Colors.deepOrange,
                onPressed: (){
                  Navigator.pushNamed(context,LoginScreen.id);
                },
              ),
            )

          ],

        ),


      ),

    );
  }
}
