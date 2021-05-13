import 'package:flutter/material.dart';
import 'package:recycle_app/Screens/LoginScreen.dart';

class WalkThrough3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Color(0xff9bafd3),
            ],
            stops: [
              0.5,
              0.9
            ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 60.0,
          ),
          Expanded(
            child: SizedBox(),
          ),
          Container(
            height: 420,
            child: Image.asset("assets/img/3.png"),
          ),
          SizedBox(
            height: 60.0,
          ),
          Text(
            'Protect your environment',
            style: TextStyle(
                fontSize: 22.0,
                color: Colors.white,
                decoration: TextDecoration.none),
          ),
          SizedBox(
            height: 20.0,
          ),
          Hero(
            tag: 'walkthrough-indicator',
            child: RaisedButton(
              elevation: 3.0,
              splashColor: Color(0xff006462),
              color: Color(0xff006462),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Text(
                'Start',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, LoginScreen.id);
              },
            ),
          ),
          SizedBox(
            height: 65.0,
          ),
        ],
      ),
    );
  }
}
