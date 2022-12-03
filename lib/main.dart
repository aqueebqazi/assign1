import 'package:flutter/material.dart';
import 'package:task/theme/font_theme.dart';

import 'login/login.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(textTheme: textTheme),
    home: const Login(),
  ));
}
