import 'package:flutter/material.dart';
import 'package:imdb/widget.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget heightOfColumn=SizedBox(height: 10,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Top Ten Tv Show 2021 ",
          style: TextStyle(
              color: Colors.amber, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      ///Main column
      body: Column(
        children: [
          Expanded(
              child: ListView(
                children: [
                  ///First
                  SizedBox(height: 5,),
                  MyRow(numberOfRow: "1", nameOfFilm: "Wanda Vision", rate: "8.0",widthBlackCon: 265,),
                  heightOfColumn,
                  MyRow(numberOfRow: "2", nameOfFilm: "Loki", rate: "8.3",widthBlackCon: 245,),
                  heightOfColumn,
                  MyRow(numberOfRow: "3", nameOfFilm: "Squid Game", rate: "8.1",widthBlackCon: 260,),
                  heightOfColumn,
                  MyRow(numberOfRow: "4", nameOfFilm: "Winter Solider", rate: "7.3"),
                  heightOfColumn,
                  MyRow(numberOfRow: "5", nameOfFilm: "Bridgerton", rate: "7.3"),
                  heightOfColumn,
                  MyRow(numberOfRow: "6", nameOfFilm: "The Walking\n Dead", rate: "8.2",widthBlackCon: 255,),
                  heightOfColumn,
                  MyRow(numberOfRow: "7", nameOfFilm: "Mare Of\nEastton", rate: "8.5",widthBlackCon: 230,),
                  heightOfColumn,
                  MyRow(numberOfRow: "8", nameOfFilm: "Shadow \$ Bone", rate: "7.7",widthBlackCon: 265,),
                  heightOfColumn,
                  MyRow(numberOfRow: "9", nameOfFilm: "CobraKia", rate: "8.6",widthBlackCon: 220,),
                  heightOfColumn,
                  MyRow(numberOfRow: "10", nameOfFilm: "Lucifer", rate: "8.1",widthBlackCon: 268,),

                ],
              )),
        ],
      ),
    );
  }
}