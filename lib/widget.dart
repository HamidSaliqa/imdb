import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  final String numberOfRow;
  final String nameOfFilm;
  final String rate;
  final double widthBlackCon;

  MyRow(
      {required this.numberOfRow,
      required this.nameOfFilm,
      required this.rate,
      this.widthBlackCon = 270});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.amber,
      child: Stack(children: [
        ///seecond container
        Container(
          color: Colors.black,
          height: 80,
          width: widthBlackCon,
          child: Row(
            children: [
              Text(
                numberOfRow,
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 65,
                height: 65,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                child: Text("Photo"),
                alignment: Alignment.center,
              ),
              SizedBox(
                width: 10,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/Description");
                  },
                  child: Text(
                    nameOfFilm,
                    style: TextStyle(color: Colors.amberAccent, fontSize: 20),
                  )),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Icon(
                Icons.star,
                color: Colors.black,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 5),
              child: Text(
                rate,
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
