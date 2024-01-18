import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Container(
              color: Colors.red,
              height: 300,
              width: double.infinity,
            ),
            Container(
              color: Colors.blue,
              width: double.infinity,
              height:350,
            )
          ],
        ),
      ),
    );
  }
}
