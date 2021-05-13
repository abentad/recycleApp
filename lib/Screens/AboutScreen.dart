import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  static String id = 'AboutScreen';
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: BackButton(color: Colors.black,),
              ),
            ],
          ),

          Text('About The Developers', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),



        ],
      ),
    );
  }
}
