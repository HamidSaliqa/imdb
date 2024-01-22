import 'package:flutter/material.dart';

import 'description.dart';

import 'List.dart';

///MY Row
class MyRow extends StatefulWidget {
  final String numberOfRow;
  final String nameOfFilm;
  final String rate;
  final double widthBlackCon;
  final String imageName;

  MyRow({
    required this.numberOfRow,
    required this.nameOfFilm,
    required this.rate,
    this.widthBlackCon = 270,
    this.imageName = "assets/wanda.png",
  });

  @override
  State<MyRow> createState() => _MyRowState();
}

class _MyRowState extends State<MyRow> {
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
          width: widget.widthBlackCon,
          child: Row(
            children: [
              Text(
                widget.numberOfRow,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: "LondrinaOutline"),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 65,
                height: 65,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                child: Image.asset(widget.imageName),
                alignment: Alignment.center,
              ),
              SizedBox(
                width: 10,
              ),

              ///Text button
              TextButton(
                  onPressed: () {
                    textButtonPressed(filmMap);
                  },
                  child: Text(
                    widget.nameOfFilm,
                    style: TextStyle(
                        color: Colors.amberAccent,
                        fontSize: 20,
                        fontFamily: "LondrinaOutline"),
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
                widget.rate,
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        )
      ]),
    );
  }

  /// on pressed text
  void textButtonPressed(Map filmMap) {
    final imageUrl = filmMap[widget.nameOfFilm];

    if (imageUrl != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Description(
            forImageUrl: imageUrl,
            title: widget.nameOfFilm,
          ),
        ),
      );
    }
  }
}

///image con class

class ImageCON extends StatelessWidget {
  final String imageUrl;

  ImageCON({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    const double heightImageCon = 300;
    return Container(
      decoration: BoxDecoration(color: Colors.red, boxShadow: [
        BoxShadow(color: Colors.black54, offset: Offset(1, 4), blurRadius: 10)
      ]),
      height: heightImageCon,
      width: double.infinity,
      child: Image.asset(
        "assets/$imageUrl",
        fit: BoxFit.cover,
        height: heightImageCon,
      ),
      alignment: Alignment.center,
    );
  }
}

///ConForDescription
class ConForDescription extends StatelessWidget {
  final String name;

  ConForDescription({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width:10,),
            CustomOutlinedButton(text: "Action"),
            SizedBox(width:10,),
            CustomOutlinedButton(text: "Comedy"),
            SizedBox(width:10,),
            CustomOutlinedButton(text: "Drama"),
          ],
        ),
        Container(
          alignment: Alignment.bottomLeft,
          width: 350,
          height: 200,
          margin: EdgeInsets.only(top: 30),
          decoration: BoxDecoration(
            color: Color.fromRGBO(31, 31, 31, 0.8),
          ),
          child: Column(
            children: [
              Text(
               "Creator",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width:300,
                child: Divider(color: Colors.amberAccent[100],),
              ),
              Text(
                "Stars",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width:300,
                child: Divider(color: Colors.amberAccent,),
              ),

            ],
          ),
        ),
      ],
    );
  }
}

///my custom outlineButton
Widget CustomOutlinedButton({required String text}) {
  return OutlinedButton(
    onPressed: () {},
    child: Text(
      text,
      style: TextStyle(color: Colors.white),
    ),
    style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
        side: MaterialStatePropertyAll(BorderSide(color: Colors.amberAccent))),
  );
}
