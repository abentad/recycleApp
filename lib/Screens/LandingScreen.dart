import 'package:flutter/material.dart';
import 'package:recycle_app/Screens/BlogCard.dart';
import 'package:recycle_app/Screens/BlogScreen.dart';
import 'package:recycle_app/Screens/HomeScreen.dart';
import 'package:recycle_app/Screens/LandingDrawer.dart';
import 'package:recycle_app/Screens/ProfileScreen.dart';
import 'package:recycle_app/Screens/ScanScreen.dart';

import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingScreen extends StatefulWidget {
  static String id = 'LandingScreen';

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: 1,
    );
  }

  @override
  void dispose() {
    super.dispose();
//    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _willPopCallback,
      child: Scaffold(
        drawer: LandingDrawer(),
        body: PageView(
          pageSnapping: true,
          scrollDirection: Axis.vertical,
          controller: pageController,
          physics: PageScrollPhysics(),
          children: [
            ScanScreen(),
            HomeScreen(),
            BlogScreen()
          ],
        ),
      ),
    );
  }

  Future<bool> _willPopCallback() async {
    print('Will Pop');
    return true;
  }
}
