import 'package:empower_u/screens/authentication/phone_authentication.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class AuthUi extends StatelessWidget {
  const AuthUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            width: 220,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.indigo.shade900)),
                onPressed: () {
                  Navigator.pushNamed(context, PhoneAuthScreen.id);
                },
                child: Row(
                  children: [
                    Icon(Icons.phone_android_outlined, color: Colors.white),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Continue With Phone',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ))),
        SignInButton(
          Buttons.google,
          text: ('Continue With Google'),
          onPressed: () {},
        ),
        SignInButton(
          Buttons.facebookNew,
          text: ('Continue With FaceBook'),
          onPressed: () {},
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('OR',
              style: TextStyle(
                  color: Colors.indigo.shade900,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Login With Email',
              style: TextStyle(
                  color: Colors.indigo.shade900,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline)),
        )
      ],
    ));
  }
}
