import 'package:flutter/material.dart';
import 'package:imdb/widget.dart';
import 'List.dart';

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
              color: Colors.amber, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
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
