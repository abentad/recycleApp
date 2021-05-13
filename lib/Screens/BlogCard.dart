import 'package:flutter/material.dart';
import 'package:recycle_app/Screens/BlogDetailScreen.dart';

class BlogCard extends StatefulWidget {

  @override
  _BlogCardState createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, BlogDetailScreen.id);
      },
      child: Container(
        height: 280.0,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage(
                'assets/img/landscape1.jpg',
              ),
              fit: BoxFit.fitWidth,
              height: 120.0,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 8.0,
                right: 8.0,
                top: 4.0,
                bottom: 4.0,
              ),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/img/blog.png'),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Ammanuel Mekonnen',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        'Title Of The Blog',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0),
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: true,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Text(
                'Some text for demo purpose Some text for demo purpose '
                    'Some text for demo purpose Some text for demo purpose '
                    'Some text for demo purpose Some text for demo purpose '
                    'Some text for demo purpose Some text for demo purpose '
                    'Some text for demo purpose Some text for demo purpose '
                    'Some text for demo purpose Some text for demo purpose '
                    'Some text for demo purpose Some text for demo purpose '
                    'Some text for demo purpose Some text for demo purpose ',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.justify,
                overflow: TextOverflow.fade,
                maxLines: 4,
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
