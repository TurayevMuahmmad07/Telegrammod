import 'package:app1/HomePage.dart';
import 'package:app1/pages/contactpage.dart';
import 'package:app1/widgetlar.urganamiz/Container.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook',
      color: Colors.white,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {'/Contact': (context) => const Contact()},
    );
  }
}
