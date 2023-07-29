import 'package:empower_u/helper/colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: BackgroundColor,
      body: Column(
        children: [
          Expanded(child: Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child:Column(children: [
              SizedBox(height:100),
              Image.asset("assets/images/logo.jpeg"),
              SizedBox(height:10,),
             
            ],)
          ),),
        ],
      )
    );
  }
}