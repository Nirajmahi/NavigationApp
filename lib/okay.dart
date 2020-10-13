import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appnavigation/login.dart';
import 'package:flutter_appnavigation/registration.dart';
import 'package:flutter_appnavigation/helper.dart';
class Okay extends StatefulWidget {
  static const String id = 'okay';

  @override
  _OkayState createState() => _OkayState();
}

class _OkayState extends State<Okay> {
  var height1;
  var width1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        backgroundColor: Colors.white12,
        body:
        Padding(
          padding:EdgeInsets.only(
            bottom:100,top:100,
          ),
          child:Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(100),
                child: Container(
                    child: Image.asset('images/yes.png'),
                    ),
              ),
              Text("Registration has been done successfully!!",
                        style:TextStyle(
                          fontWeight:FontWeight.bold,
                          fontSize: 18,
                          color:Colors.red,

                        ),),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: RoundedButton(
                  title: "Back to previous page",
                  colour: Colors.green,
                  onPressed: (){
                    Navigator.pushNamed(context,RegistraionScreen.id);
                  },

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: RoundedButton(
                  title: "Log In Now",
                  colour: Colors.green,
                  onPressed: (){
                    Navigator.pushNamed(context,LoginScreen.id);
                  },

                ),
              ),
            ],
          ),
        ),
    );
  }
}
