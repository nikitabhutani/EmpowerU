import 'package:empower_u/helper/colors.dart';
import 'package:flutter/material.dart';

import '../widgets/auth_ui.dart';

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
              Image.asset("assets/images/logo.jpeg",
              height:250,
              width:250,
              ),
              SizedBox(height:10,),
             
            ],)
          ),),
          Expanded(child: Container(
            child:AuthUi(),
          ),),
          Padding(
    padding:const EdgeInsets.all(8.0),
    child:Text('If you continue,you are accepting \n Terms And Conditions and Privacy Policy',
    textAlign:TextAlign.center,
    style:TextStyle(color:Colors.white,fontSize: 10)),)
        ],
      )
    );
  }
}