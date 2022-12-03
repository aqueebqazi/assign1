import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:task/login/controller/loginController.dart';
import 'package:task/login/login.dart';

import '../../theme/color_file.dart';

LoginController loginController = Get.put(LoginController());
Widget loginForm(double height, double width, context) {
  return Stack(
    children: [
      Container(
        margin: EdgeInsets.only(top: 30 * height),
        width: 280 * width,
        height: 150 * height,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(60), bottomRight: Radius.circular(60)),
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
        child: Column(
          children: [
            TextField(
              controller: username,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'User Name',
                border: InputBorder.none,
              ),
            ),
            Container(
              width: 280 * width,
              height: 2 * height,
              color: grey,
            ),
            TextField(
              controller: password,
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                border: InputBorder.none,
              ),
            ),
          ],
        ),
      ),
      Positioned.fill(
        left: 10,
        top: 20,
        child: Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: (() =>
                loginController.login(username.text, password.text, context)),
            child: Container(
              width: 60 * width,
              height: 60 * height,
              decoration: BoxDecoration(color: blue, shape: BoxShape.circle),
              child: Icon(
                Icons.arrow_right,
                color: white,
                size: 40 * width,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
