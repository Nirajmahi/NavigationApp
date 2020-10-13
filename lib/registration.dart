import 'package:flutter_appnavigation/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appnavigation/helper.dart';
import 'package:flutter_appnavigation/okay.dart';
class RegistraionScreen extends StatefulWidget {

  static const String id = 'registration_screen';

  @override
  _RegistraionScreenState createState() => _RegistraionScreenState();
}

class _RegistraionScreenState extends State<RegistraionScreen> {
  double _height;
  double _width;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white12,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget> [
            Container(
              height: 66,
              child:Image.asset('images/yes.png'),            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                textAlign: TextAlign.center,
                onChanged: (value)
                {
                  // Do something with user input
                },
                decoration: TextFieldDecoration.copyWith(hintText: " Enter your User name"),


              ),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                textAlign: TextAlign.center,
                onChanged: (value)
                {

                },
                decoration: TextFieldDecoration.copyWith(hintText: " Enter your Email"),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value)
                  {

                  },
                  decoration: TextFieldDecoration.copyWith(hintText: " Enter your password")

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value)
                  {

                  },
                  decoration: TextFieldDecoration.copyWith(hintText: "Repeat your Password")

              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundedButton(
                title: "Register",
                colour: Colors.blueAccent,
    onPressed: (){
    Navigator.pushNamed(context,Okay.id);
    },

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: RoundedButton(
                title: "Back to home",
                colour: Colors.green,
                onPressed: (){
                  Navigator.pushNamed(context,WelcomeScreen.id);
                },
              ),
            ),

          ],

        ),
      ),

    );
  }
}