
import 'package:flutter/material.dart';

import 'modules/bmi_screen/BMI_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BmiApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}