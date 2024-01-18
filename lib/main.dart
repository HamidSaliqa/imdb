import 'package:flutter/material.dart';
import 'package:imdb/splash.dart';
import 'description.dart';
import 'widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      routes: {
        "/Description":(context) =>Description(),
      },
    );
  }
}


