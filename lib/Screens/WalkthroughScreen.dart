import 'package:flutter/material.dart';
import 'package:finite_coverflow/finite_coverflow.dart';
import 'package:recycle_app/Screens/walkthrough1.dart';
import 'package:recycle_app/Screens/walkthrough2.dart';
import 'package:recycle_app/Screens/walkthrough3.dart';


class WalkThrough extends StatefulWidget {
  static String id = 'WalkThroughScreen';

  @override
  _WalkThroughState createState() => _WalkThroughState();
}

class _WalkThroughState extends State<WalkThrough> {
  @override
  Widget build(BuildContext context) {
    return FinitePager(
      overscroll: -300, // Over Scroll value when user slide in or slide off
      pagerType: PagerType.stack, // PagerType by default set to carousel
      scrollDirection: Axis.horizontal, // Scroll direction for pager
      pageSnapping: true,
      physics: PageScrollPhysics(),
      children: <Widget>[

        WalkThrough1(),

        WalkThrough2(),

        WalkThrough3(),

      ],
    );
  }
}
