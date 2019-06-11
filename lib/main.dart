import 'package:flutter/material.dart';
import 'constance_screen.dart';

import 'movie_cover.dart';
import 'movie_screen.dart';
import 'upcomming_screen.dart';
import 'profile_screen.dart';
import 'social_screen.dart';
import 'search_screen.dart';
import 'test.dart';

import 'comunity_container.dart';


void main() {
  runApp(
    HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Color(0xFFFCFCFC),primaryColor: Color(0xFF0077FF)),
        debugShowCheckedModeBanner: false,
        home: new ScaffoldContent(),
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case '/home':
              return MaterialPageRoute(builder: (context) => HomeScreen());
              break;
            case '/upcomming':
              return MaterialPageRoute(builder: (context) => Upcomming());
              break;
            case '/profile':
              return MaterialPageRoute(builder: (context) => ProfileScreen());
              break;
            case '/social':
              return MaterialPageRoute(builder: (context) => SocialScreen());
              break;
            case '/search':
              return MaterialPageRoute(builder: (context) => SearchScreen());
              break;
            case '/test':
              return MaterialPageRoute(builder: (context) => TestVideo());
              break;
          }
        }
    );
  }
}

class ScaffoldContent extends StatelessWidget {
  const ScaffoldContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60.0,
        width: double.infinity,
        color: kWhiteColor,
        child: Row(
          children: <Widget>[
            Expanded(
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                    child: Icon(
                      Icons.account_box,
                      color: kMediumTextColor,
                    ))),
            Expanded(
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/upcomming');
                    },
                    child:
                    Icon(Icons.add_to_photos, color: kMediumTextColor))),
            Expanded(
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Icon(
                      Icons.add_to_queue,
                      color: kBlueColor,
                    ))),
            Expanded(
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/social');
                    },
                    child: Icon(Icons.chat_bubble_outline,
                        color: kMediumTextColor))),
            Expanded(
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/search');
                    },
                    child: Icon(Icons.search, color: kMediumTextColor))),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20.0, top: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Movies', style: kH1),
                Text('Watch the next upcomming', style: kH2),
                SizedBox(height: 15.0),
                new BigMovieCover(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MovieScreen()));
                    },
                    image:
                    'http://de.web.img3.acsta.net/pictures/19/05/02/15/29/0134347.jpg'),
                SizedBox(height: 28.0),
                Text('Gerade belibt', style: kH3),
                SizedBox(height: 13.0),
                Container(
                  height: 180.0,
                  width: double.infinity,
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      new MediumMovieCover(
                          image:
                          'http://t1.gstatic.com/images?q=tbn:ANd9GcRDqyVmig5f0BKFcrAnCYtd_03n-x8EsOHNHX3q061oWRHhYjue'),
                      SizedBox(width: 20.0),
                      new MediumMovieCover(
                          image:
                          'http://t3.gstatic.com/images?q=tbn:ANd9GcTeaf2FjncLHf4Qth42u6nHOQlcNbYOcwc3J791OOehRqh2PglF'),
                      SizedBox(width: 20.0),
                      new MediumMovieCover(
                          image:
                          'http://t2.gstatic.com/images?q=tbn:ANd9GcQ-Gxxk_inhbcl6HhpPcEZ7Kxnx0dxdx2J4Y97t8EdOa8QXB7oe'),
                      SizedBox(width: 20.0),
                      new MediumMovieCover(
                          image:
                          'http://t1.gstatic.com/images?q=tbn:ANd9GcTpx3Zycb8aqveBv9EgIZznfjXJKEvbJpDtna-ViQ3oYdYREjtD'),
                      SizedBox(width: 20.0),
                      new MediumMovieCover(
                          image:
                          'http://t1.gstatic.com/images?q=tbn:ANd9GcRygSRbllxO1ujw2_-7e0TqLFqvekkJBIB3pLsk7rTwx173V171'),
                      SizedBox(
                        width: 20.0,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                Text('Category', style: kH3),
                new CommunityContainer(
                  header: 'Juli release',
                  firstIcon: '🍿',
                  secondIcon: '🏆',
                  thirdIcon: '📺',
                  onTap: () {
                  },
                ),
                new CommunityContainer(
                    header: 'Neu auf Netflix',
                    firstIcon: '💯',
                    secondIcon: '💻',
                    thirdIcon: '🙊',
                  onTap: () {
                    Navigator.pushNamed(context, '/test');
                  },),
                new CommunityContainer(
                    header: 'Romantic movies',
                    firstIcon: '👩‍❤️‍💋‍👨 ',
                    secondIcon: '💋',
                    thirdIcon: '😍'),
                new CommunityContainer(
                    header: 'Fantasy-Serien',
                    firstIcon: '💸️',
                    secondIcon: '🦄',
                    thirdIcon: ' 🌠'),
                new CommunityContainer(
                    header: 'Food-Shows',
                    firstIcon: '🍕',
                    secondIcon: '🍫',
                    thirdIcon: '🍺'),
                SizedBox(height: 15.0),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class CalenderIcon extends StatelessWidget {
  CalenderIcon({this.onTap, this.color});

  final Function onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap, child: Icon(Icons.add_comment, size: 30.0, color: color));
  }
}
