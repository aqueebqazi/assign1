import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ftoast/ftoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:task/Constant/constants.dart';
import 'package:task/Home/home.dart';

class LoginController extends GetxController {
  RxString name = "".obs;
  RxString lastName = "".obs;
  RxString errorMsg = "".obs;
  login(String username, String pass, context) async {
    Map<String, dynamic> loginData = {};

    var response = await http.post(Uri.parse("$baseUrl/api/login.php"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"username": username, "password": pass}));
    var result = jsonDecode(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      loginData = result["data"]["user"] as Map<String, dynamic>;
      name.value = loginData["FIRST_NAME"];
      lastName.value = loginData["LAST_NAME"];
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    } else if (response.statusCode > 201) {
      errorMsg.value = result["message"];
      FToast.toast(context, msg: errorMsg.value.toString());
    }
  }
}
