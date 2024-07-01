# flutter_application_17

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Grid View

Grid View merupakan salah satu layouting widget atau widget invisivble yang dapat mengkontrol tata letak dari sebuah widget.

![Capture](https://github.com/appworkspaceRM/widget-grid-view/assets/135511281/50953832-f19e-496e-8682-bb24f999568e)


- cross axis count digunakan untuk mengatur seberapa banyak widget secara horizontal.
- main axis space digunakan untuk mengatur jarak secara vertical
- cross axis space digunakan untuk mengatur jarak secara horizontal

widget grid view sendiri membutuhkan required properti atau name argument yaitu gridDelegate : yang memerlukan SliverGridDelegate. jika susunan pasti bisa menggunakan SliverGridDelegateWithFixedCrossAxisCount.

SliverGridDelegateWithFixedCrossAxisCount membutuhkan required properti atau name argument yaitu crossAxisCount atau jumlah grid secara horizontal yang memerlukan int. pada SliverGridDelegateWithFixedCrossAxisCount kita tidak bisa mengatur panjang dan lebar widget lain karna secara defult SliverGridDelegateWithFixedCrossAxisCount mengatur secara proporsional dari panjang dan lebar suatu widget. panjang dan lebar dapat di atur dengan properti pada widget SliverGridDelegateWithFixedCrossAxisCount dengan menggunakan name argument childSpactRatio: yang memerlukan double.

pada gridview terdapat beberapa enum yang dapat mempercepat pembuatan gridview seperti GridView.count(), GridView.builder() dan lainya.
```dart
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

```
![code-snapshot](https://github.com/appworkspaceRM/widget-grid-view/assets/135511281/2b4a4b1e-cefa-4786-ab6c-1b0c09bb2f56)

