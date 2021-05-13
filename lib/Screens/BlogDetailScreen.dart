import 'package:flutter/material.dart';

class BlogDetailScreen extends StatefulWidget {
  static String id = 'BlogDetailScreen';

  @override
  _BlogDetailScreenState createState() => _BlogDetailScreenState();
}

class _BlogDetailScreenState extends State<BlogDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          slivers: <Widget>[
            SliverAppBar(
              title: Text(
                'Title For The Blog',
                style: TextStyle(
                  color: Colors.teal,
                ),
              ),
              backgroundColor: Colors.white,
              elevation: 6.0,
              expandedHeight: 250,
              floating: true,
              snap: true,
              pinned: true,
              leading: BackButton(
                color: Colors.black,
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image(
                  image: AssetImage(
                    'assets/img/woman.jpg',
                  ),
                  fit: BoxFit.fitWidth,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              automaticallyImplyLeading: true,
              forceElevated: true,
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 4.0,
                  ),
                  child: Text(
                    'Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc '
                    'Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc '
                    'Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc '
                    'Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc '
                    'Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc Item 1 vdoibv ijv pwidub oudyv ouydou odyiuv usdoyv osu vedc ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                    softWrap: true,
                    maxLines: 100,
                    textAlign: TextAlign.justify,
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
