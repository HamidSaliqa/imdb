import 'package:flutter/material.dart';
import 'package:imdb/List.dart';
import 'package:imdb/widget.dart';

class Description extends StatelessWidget {
  final String forImageUrl;
  final String title;

  Description({required this.forImageUrl,required this.title});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(title,style: TextStyle(color: Colors.amberAccent),),
        ),
        body: Column(
          children: [
            ImageCON(imageUrl:forImageUrl),
            ConForDescription(name:title),
            SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
}
