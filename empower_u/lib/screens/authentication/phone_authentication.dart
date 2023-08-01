import 'package:empower_u/helper/contants.dart';
import 'package:empower_u/screens/size_configs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhoneAuthScreen extends StatefulWidget {
  static const String id = 'phone-auth-screen';
  const PhoneAuthScreen({super.key});

  @override
  State<PhoneAuthScreen> createState() => _PhoneAuthScreenState();
}

class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
  bool validate = false;
  var countryCodeController = TextEditingController(text: '+91');
  var phoneNumberController = TextEditingController();

  //alert dialog
  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: Row(
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
          SizedBox(
            width: 8,
          ),
          Text("Please Wait"),
        ],
      ),
    );
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  phoneAuthentication(number) {
    print(number);
  }

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
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    controller: countryCodeController,
                    enabled: false,
                    decoration: InputDecoration(
                      labelText: 'Country',
                      counterText: '10',
                    ),
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(10),
                ),
                Expanded(
                    flex: 3,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 10) {
                          setState(() {
                            validate = true;
                          });
                        }
                        if (value.length < 10) {
                          setState(() {
                            validate = false;
                          });
                        }
                      },
                      autofocus: true,
                      maxLength: 10,
                      textAlignVertical: TextAlignVertical.bottom,
                      keyboardType: TextInputType.phone,
                      controller: phoneNumberController,
                      enabled: false,
                      decoration: InputDecoration(
                        // counterText: '$counterText/10',
                        // counterStyle: TextStyle(fontSize: 10),
                        contentPadding: EdgeInsets.only(bottom: 20, top: 20),
                        labelText: 'Number',
                        hintText: "Enter your Phone number",
                        hintStyle: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: AbsorbPointer(
            absorbing: validate ? false : true,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: validate
                    ? MaterialStateProperty.all(Theme.of(context).primaryColor)
                    : MaterialStateProperty.all(Colors.grey),
              ),
              onPressed: () {
                String number =
                    '${countryCodeController.text}${phoneNumberController.text}';
                showAlertDialog(context);
                phoneAuthentication(number);
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
