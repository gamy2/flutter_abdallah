import 'dart:math';

import 'package:flutter/material.dart';

class BmiApp extends StatefulWidget {
  BmiApp({Key? key}) : super(key: key);

  @override
  State<BmiApp> createState() => _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {
  bool isMale=true;
  double Height=180;
  int age=20;
  int weight=80;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 1, 82),
      appBar: AppBar(
        title: Text("BMI"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 18, 1, 82),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 50,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "MALE",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:isMale? Colors.red: Colors.amberAccent),
                      ),
                      onTap: (){
                        setState(() {
                          isMale=true;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: InkWell(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 50,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "FEMALE",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: !isMale? Colors.red: Colors.amberAccent),
                      ),
                      onTap: (){
                        setState(() {
                          isMale=false;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${Height.round()}",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w900,
                            )),
                        SizedBox(
                          width: 8,
                        ),
                        Text("cm"),
                      ],
                    ),
                    Slider(
                        value: Height,
                        max: 210,
                        min: 50,
                        onChanged: (value) {
                          setState(() {
                            Height=value;
                          });
                        })
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amberAccent),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Age",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          Text("${age}",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {setState(() {
                                  age++;
                                
                                });},
                                heroTag: ' age+',
                                child: Icon(Icons.add),
                                mini: true,
                                backgroundColor: Color.fromARGB(255, 18, 1, 82),
                              ),
                               SizedBox(width: 20,),
                              FloatingActionButton(
                                onPressed: () {setState(() {
                                  if(age>0){
                                    age--;
                                  }
                                });},
                                heroTag: ' age-',
                                child: Icon(Icons.remove),
                                mini: true,
                                backgroundColor: Color.fromARGB(255, 18, 1, 82),
                              )
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amberAccent),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Weight",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          Text("${weight}",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {setState(() {
                                  weight++;
                                });},
                                heroTag: ' weight+',
                                child: Icon(Icons.add),
                                mini: true,
                                backgroundColor: Color.fromARGB(255, 18, 1, 82),
                              ),
                              SizedBox(width: 20,),
                              FloatingActionButton(
                                onPressed: () {setState(() {
                                  if(weight>0){
                                    weight--;
                                  }
                                });},
                                heroTag: ' weight-',
                                child: Icon(Icons.remove),
                                mini: true,
                                backgroundColor: Color.fromARGB(255, 18, 1, 82),
                              )
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amberAccent),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.redAccent,
            child: MaterialButton(
              height: MediaQuery.of(context).size.height * 0.06,
              child: Text("cal"),
              onPressed: () {double result = weight /pow(Height/100, 2);
              print(result.round());},
            ),
          )
        ],
      ),
    );
  }
}
