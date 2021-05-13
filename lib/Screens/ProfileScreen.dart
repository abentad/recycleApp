import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatefulWidget {
  static String id = "ProfileScreen";

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  PageController pageController;

  int index = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: MediaQuery.of(context).size.height,
              // TODO
              width: MediaQuery.of(context).size.width,
              color: Color(0xff9bafd3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      BackButton(
                        color: Colors.black,
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.userEdit),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/img/woman.jpg'),
                          maxRadius: 50,
                        ),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Hawllett',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            '+251912646868',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 2.0,
                  ),
                  Container(
                    height: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Color(0xffFFDF00),
                            ),
                            Text(
                              'Stars',
                              style: TextStyle(color: Colors.black),
                            ),
                            index == 0
                                ? Padding(
                                    padding: EdgeInsets.only(top: 8.0),
                                    child: Container(
                                      color: Colors.white,
                                      height: 2.0,
                                      width: 50.0,
                                    ),
                                  )
                                : Padding(
                                    padding: EdgeInsets.only(top: 8.0),
                                    child: Container(
                                      color: Colors.transparent,
                                      height: 2.0,
                                      width: 50.0,
                                    ),
                                  ),
                          ],
                        ),
                        // Container(
                        //   color: Colors.white,
                        //   width: 2.0,
                        //   height: 35.0,
                        // ),
                        Column(
                          children: <Widget>[
                            Icon(
                              FontAwesome.dollar,
                              color: Color(0xffFFDF00),
                            ),
                            Text('Balance'),
                            index == 1
                                ? Padding(
                                    padding: EdgeInsets.only(top: 8.0),
                                    child: Container(
                                      color: Colors.white,
                                      height: 2.0,
                                      width: 50.0,
                                    ),
                                  )
                                : Padding(
                                    padding: EdgeInsets.only(top: 8.0),
                                    child: Container(
                                      color: Colors.transparent,
                                      height: 2.0,
                                      width: 50.0,
                                    ),
                                  ),
                          ],
                        ),
                        // Container(
                        //   color: Colors.white,
                        //   width: 2.0,
                        //   height: 35.0,
                        // ),
                        Column(
                          children: <Widget>[
                            Icon(
                              FontAwesome.trophy,
                              color: Color(0xffFFDF00),
                            ),
                            Text('Awards'),
                            index == 2
                                ? Padding(
                                    padding: EdgeInsets.only(top: 8.0),
                                    child: Container(
                                      color: Colors.white,
                                      height: 2.0,
                                      width: 50.0,
                                    ),
                                  )
                                : Padding(
                                    padding: EdgeInsets.only(top: 8.0),
                                    child: Container(
                                      color: Colors.transparent,
                                      height: 2.0,
                                      width: 50.0,
                                    ),
                                  ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            height: MediaQuery.of(context).size.height * 0.65,
            width: MediaQuery.of(context).size.width,
            top: MediaQuery.of(context).size.height * 0.35,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: PageView(
                onPageChanged: (int num) {
                  setState(() {
                    index = num;
                  });
                },
                pageSnapping: true,
                scrollDirection: Axis.horizontal,
                controller: pageController,
                physics: PageScrollPhysics(),
                children: [
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          child: Icon(FontAwesome.star),
                        ),
                        title: Text(
                          'Earned Stars',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF6a5B95),
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          '217',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF6a5B95),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          child: Icon(FontAwesome.dollar),
                        ),
                        title: Text(
                          'Balance',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF6a5B95),
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          '217',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF6a5B95),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          child: Icon(FontAwesome.trophy),
                        ),
                        title: Text(
                          'Awards',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF6a5B95),
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          '217',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF6a5B95),
                          ),
                        ),
                      ),
                    ],
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
