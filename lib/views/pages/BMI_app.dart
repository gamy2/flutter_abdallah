import 'package:flutter/material.dart';

class BmiApp extends StatefulWidget {
  BmiApp({Key? key}) : super(key: key);

  @override
  State<BmiApp> createState() => _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {
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
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.access_time,
                            size: 50,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "data",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
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
                          Icon(
                            Icons.access_time,
                            size: 50,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "data",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
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
                        Text("180",
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
                        value: 180,
                        max: 210,
                        min: 50,
                        onChanged: (value) {
                          print(value.round());
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
                          Text("data",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {},
                                child: Icon(Icons.add),
                                mini: true,
                                backgroundColor: Color.fromARGB(255, 18, 1, 82),
                              ),
                               SizedBox(width: 20,),
                              FloatingActionButton(
                                onPressed: () {},
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
                          Text("Age",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          Text("data",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {},
                                child: Icon(Icons.add),
                                mini: true,
                                backgroundColor: Color.fromARGB(255, 18, 1, 82),
                              ),
                              SizedBox(width: 20,),
                              FloatingActionButton(
                                onPressed: () {},
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
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
