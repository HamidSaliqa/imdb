import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('About Me'),
          backgroundColor: Color(0xFF000000),
        ),
        body: Scaffold(
          backgroundColor:Colors.black87,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 60,),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(color: Colors.white,offset: Offset(-1, 1),blurRadius: 10)]
                ),
                child: CircleAvatar(
                  radius: 75,
                  backgroundColor: Colors.amber,
                  backgroundImage:
                      AssetImage('assets/Profile_Picture.jpg'),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'HAMID RASOLI',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                title: Text(
                  'HAMID.SALIQA2020@GMAIL.COM',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
                title: Text(
                  '+93 799 1616 35',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.cake,
                  color: Colors.white,
                ),
                title: Text(
                  'Date of Birth: MARCH 23,2003',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
