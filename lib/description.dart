import 'package:flutter/material.dart';
import 'package:imdb/List.dart';
import 'package:imdb/widget.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://www.imdb.com/');

class Description extends StatelessWidget {
  final String forImageUrl;
  final String title;

  Description({required this.forImageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    var forSummary = summaryFilm[title];
    var forCreator = filmCreators[title];
    var forStars = filmStars[title];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            title,
            style: TextStyle(color: Colors.amberAccent),
          ),
        ),
        body: Column(
          children: [
            ImageCON(imageUrl: forImageUrl),
            ConForDescription(
                name: title,
                stars: forStars!.join(","),
                summary: forSummary!,
                creator: forCreator!,
                genres: filmGenres),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () => _launchUrl(),
                child: Text(
                  "Read More...",
                  style: TextStyle(color: Colors.amber, fontSize: 18),
                )),
          ],
        ),
      ),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
