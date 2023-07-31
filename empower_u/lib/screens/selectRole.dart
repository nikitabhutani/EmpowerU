import 'package:empower_u/screens/size_configs.dart';
import 'package:flutter/material.dart';

class SelectRole extends StatelessWidget {
  const SelectRole({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(200),
        decoration: BoxDecoration(),
      ),
    );
  }
}
