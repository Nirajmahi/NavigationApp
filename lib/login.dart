import 'package:flutter_appnavigation/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appnavigation/helper.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget> [
            Container(
              height: 150,
              child:Image.asset('images/yes.png'),            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                textAlign: TextAlign.center,
                onChanged: (value)
                {

                },
                decoration: TextFieldDecoration.copyWith(hintText: " Enter User Name/Email",hintStyle:TextStyle (color:Colors.black,fontWeight: FontWeight.bold),),


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
                  decoration: TextFieldDecoration.copyWith(hintText: " Enter your password",hintStyle:TextStyle (color:Colors.black,fontWeight: FontWeight.bold,),),

              ),
            ),

            Padding(
              padding:  EdgeInsets.all(8.0),
              child: RoundedButton(
                title: "Log In",
                colour: Colors.deepOrange,
                onPressed: (){

                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundedButton(
                title: "Back to home",
                colour: Colors.green,
                onPressed: (){
                  Navigator.pushNamed(context,WelcomeScreen.id);
                },
              ),
            )


          ],

        ),
      ),

    );
  }
}
