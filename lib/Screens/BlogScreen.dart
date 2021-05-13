import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:recycle_app/Screens/BlogCard.dart';
import 'package:recycle_app/Services/static_files.dart';

class BlogScreen extends StatefulWidget {
  static String id = 'BlogScreen';

  @override
  _BlogScreenState createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  Future _fetch() async {
    var res;
    res = await http.get('$url/api');
    print(res);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contents'),
        backgroundColor: Color(0xff9bafd3),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            BlogCard(),
            BlogCard(),
            BlogCard(),
          ],
        ),
      ),
    );
  }
}
