import 'dart:js';

import 'package:f_ab_study/modules/counter/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends StatelessWidget {
  Counter({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var cubit = CounterCubit.get(context);
    return BlocProvider(
    create: (BuildContext context )=>CounterCubit(),
      child: BlocConsumer(
        listener: (context,state){},
        builder: (context, state) => Scaffold(appBar: AppBar(
        title: Text("Counter"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.teal,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
    
            }, child: Text("+")),
            Text("$cubit.counter"),
            TextButton(onPressed: (){
          
            }, child: Text("-")),]
    
        )
      ],
      ))
        
      )
    );
  }
}