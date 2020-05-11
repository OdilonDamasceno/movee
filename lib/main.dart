import 'package:flutter/material.dart';
import 'package:movee/constants.dart';

import 'pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movee',
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        fontFamily: 'MontSerrat',
        buttonColor: kPrimaryColor,
      ),
      home: LoginPage(),
    );
  }
}
