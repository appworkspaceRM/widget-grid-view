import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Container> myList = List.generate(
    30,
    (index) {
      return Container(
        width: 50,
        height: 50,
        color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256),
            Random().nextInt(256)),
        child: Center(
          child: Text(index.toString()),
        ),
      );
    },
  );
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Center(
            child: Text('GridV iew'),
          ),
        ),
        body: GridView(
          padding: const EdgeInsets.all(5),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 10,
          ),
          children: myList,
        ),
      ),
    );
  }
}
