import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:imdb/widget.dart';
import 'List.dart';
import 'about.dart';
import 'dart:async';


double calculateWidthBlackCon(int index) {
  if (index % 2 == 0) {
    return 250;
  } else {
    return 280;
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget heightOfColumn = SizedBox(
    height: 10,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Top Ten Tv Show 2021 ",
          style: TextStyle(
              color: Colors.amber, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          DropdownButton(
            dropdownColor: Colors.black87,
            iconSize: 35,
            icon: Icon(Icons.more_vert),
            items: [
              DropdownMenuItem(
                value: 1,
                child: Text("Share",style: TextStyle(color: Colors.white70),),
              ),
              DropdownMenuItem(
                value: 2,
                child: Text("About",style: TextStyle(color: Colors.white70),),
              ),
              DropdownMenuItem(
                value: 3,
                child: Text("Exit",style: TextStyle(color: Colors.white70),),
              )
            ],
            onChanged: (value) {
              setState(() {
                if (value == 1) {
                share();
                } else if (value == 2) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsPage(),));
                } else if (value == 3) {
                  exit(0);
                }
              });
            },
          ),
        ],
      ),

      ///Main column
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: name.length,
              itemBuilder: (BuildContext context, int index) {
                String numberOfRow = (index + 1).toString();
                String nameOfFilm = name[index];
                String rate = rates[index];
                String imageName = "assets/${imageNames[index]}";
                double widthBlackCon = calculateWidthBlackCon(index);

                return Column(
                  children: [
                    SizedBox(height: 5),
                    MyRow(
                      numberOfRow: numberOfRow,
                      nameOfFilm: nameOfFilm,
                      rate: rate,
                      widthBlackCon: widthBlackCon,
                      imageName: imageName,
                    ),
                    heightOfColumn,
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
Future<void> share() async {
  await FlutterShare.share(
    title: "Share it"
  );
}
