import 'package:f_ab_study/views/pages/BMI_app.dart';
import 'package:flutter/material.dart';

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