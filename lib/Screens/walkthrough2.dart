import 'package:flutter/material.dart';

class WalkThrough2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Container(
              width: width,
              height: height,
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: width,
              height: height * 0.5,
              color: Color(0xff9bafd3),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: width,
              height: height * 0.6,
              child: Image.asset("assets/img/2.png"),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: width,
              height: height * 0.18,
              child: Hero(
                tag: 'walkthrough-indicator',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    CircleAvatar(
                      maxRadius: 5.0,
                      backgroundColor: Colors.grey,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    CircleAvatar(
                      maxRadius: 5.0,
                      backgroundColor: Color(0xff006462),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    CircleAvatar(
                      maxRadius: 5.0,
                      backgroundColor: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: width,
              height: height * 0.45,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 110.0),
                  child: Text(
                    'Convert your garbage to money',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Color(0xff9bafd3),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
