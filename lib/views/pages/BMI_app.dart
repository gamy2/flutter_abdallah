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
                          Icon(Icons.access_time,size: 50,),
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
                          Icon(Icons.access_time,size: 50,),
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
            child: Container(),
          ),
          Expanded(
            child: Container(),
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