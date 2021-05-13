import 'package:flutter/material.dart';

class WalkThrough1 extends StatelessWidget {
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
            colors: [Colors.white, Color(0xff9bafd3)],
            stops: [0.4, 0.9]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 60.0,
          ),
          Expanded(
            child: SizedBox(
              height: 60.0,
            ),
          ),
          Image.asset("assets/img/1.png"),
          SizedBox(
            height: 200.0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Throw out Garbage Appropriately',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Hero(
                    tag: 'walkthrough-indicator',
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        CircleAvatar(
                          maxRadius: 5.0,
                          backgroundColor: Color(0xff006462),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        CircleAvatar(
                          maxRadius: 5.0,
                          backgroundColor: Colors.white54,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        CircleAvatar(
                          maxRadius: 5.0,
                          backgroundColor: Colors.white54,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
