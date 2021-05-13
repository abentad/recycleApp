import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: IconButton(
                  icon: Icon(
                    Icons.menu,
                  ),
                  onPressed: () {
                    // ignore: unnecessary_statements
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),
            ],
          ),
          Image.asset(
            'assets/img/arrow_down.png',
            height: 35,
          ),
          SizedBox(
            height: 12.0,
          ),
          Image.asset(
            'assets/img/koda.png',
            height: 120,
          ),
          Expanded(
            child: SizedBox(
              height: 10.0,
            ),
          ),
          Container(
            width: 200.0,
            height: 110.0,
            padding: EdgeInsets.all(0.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80.0),
              color: Color(0xFFE9E5FC),
            ),
            child: Center(
              child: ScaleAnimatedTextKit(
                  onTap: () {
                    print("Tap Event");
                  },
                  text: [
                    "326",
                  ],
                  displayFullTextOnTap: true,
                  isRepeatingAnimation: true,
                  repeatForever: true,
                  textStyle: TextStyle(
                    fontSize: 95,
                    color: Color(0xFF6a5B95),
                  ),
                  textAlign: TextAlign.center,
                  alignment: AlignmentDirectional.center // or Alignment.topLeft
                  ),
//              child: Text(
//                '326',
//                style: TextStyle(fontSize: 95, color: Color(0xFF6a5B95)),
//              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            'Total input amount',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 10.0,
            ),
          ),
          Image.asset(
            'assets/img/blog2.png',
            height: 120.0,
          ),
          SizedBox(
            height: 12.0,
          ),
          Image.asset(
            'assets/img/arrow_up.png',
            height: 35.0,
          ),
          SizedBox(
            height: 32.0,
          ),
        ],
      ),
    );
  }
}
