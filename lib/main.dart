
import 'package:f_ab_study/layout/bottomNav.dart';
import 'package:f_ab_study/modules/counter/counter.dart';
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
      home: Counter(),
      debugShowCheckedModeBanner: false,
    );
  }
}