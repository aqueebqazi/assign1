import 'package:flutter/material.dart';
import 'package:task/login/widgets/widgets.dart';
import 'package:task/theme/color_file.dart';

TextEditingController username = TextEditingController();
TextEditingController password = TextEditingController();

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 812;
    var width = MediaQuery.of(context).size.width / 375;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: 150,
                  height: 210,
                  decoration: BoxDecoration(
                      color: green,
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(160))),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 220,
                    height: 130,
                    decoration: BoxDecoration(
                        color: green,
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(160),
                            bottomLeft: Radius.circular(160))),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 100 * height),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ),
            ),
            loginForm(height, width, context),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 5),
              child: Text(
                "Forgot Password ?",
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                width: 90,
                height: 40,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      offset: Offset.zero,
                      blurRadius: 3.0,
                      spreadRadius: 0.5,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: Center(
                    child: Text(
                  "Register",
                  style: Theme.of(context).textTheme.headline3,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
