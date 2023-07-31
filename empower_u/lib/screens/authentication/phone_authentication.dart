import 'package:empower_u/helper/contants.dart';
import 'package:empower_u/screens/size_configs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhoneAuthScreen extends StatelessWidget {
  static const String id = 'phone-auth-screen';
  const PhoneAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          "Login",
          style: appBarStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: Color.fromARGB(255, 115, 188, 247),
              child: Icon(
                CupertinoIcons.person_alt_circle,
                color: Colors.blue,
                size: 80,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(12),
            ),
            Text(
              "Enter your Phone ",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Text(
              "We will send confirmation code to your phone",
              style: TextStyle(color: Colors.grey),
            ),
            Row(
              children: [
                Expanded(flex: 1, child: TextFormField()),
                SizedBox(
                  width: getProportionateScreenWidth(10),
                ),
                Expanded(flex: 3, child: TextFormField()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
