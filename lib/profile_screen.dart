import 'package:flutter/material.dart';
import 'constance_screen.dart';

import 'movie_cover.dart';
import 'movie_screen.dart';
import 'upcomming_screen.dart';
import 'profile_screen.dart';
import 'social_screen.dart';
import 'search_screen.dart';
import 'main.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Color(0xFFFCFCFC),
            primaryColor: Color(0xFF0077FF)),
        home: new ScafoldProfile(),
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
          }
        });
  }
}

class ScafoldProfile extends StatelessWidget {
  const ScafoldProfile({
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
                      color: kBlueColor,
                    ))),
            Expanded(
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/upcomming');
                    },
                    child: Icon(Icons.add_to_photos, color: kMediumTextColor))),
            Expanded(
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Icon(
                      Icons.add_to_queue,
                      color: kMediumTextColor,
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
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 130.0,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        flex: 2,
                        child: Container(
                            alignment: Alignment(-1.0, -1.0),
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(8.0),
                              child: Image.network(
                                  'https://scontent-yyz1-1.cdninstagram.com/vp/dd5ad2de0d49f1e6e826a9f81978a23b/5D8E0B95/t51.2885-15/sh0.08/e35/s750x750/61175367_371208230170587_964545706577652663_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com&ig_cache_key=MjA1MTUwNTk1NzU2MzA1Nzc3MQ%3D%3D.2'),
                            ))),
                    Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment(-1.0, -1.0),
                          margin: EdgeInsets.only(left: 20.0),
                          width: double.infinity,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Leon Schmidt', style: kH2Dark),
                              SizedBox(height: 5.0),
                              Text(
                                  'Dies ist eine Beschreibung über mein Profil!',
                                  style: kH4),
                              SizedBox(height: 20.0),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on,
                                    size: 18.0,
                                    color: kMediumTextColor,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Hamburg,   Germany',
                                    style: kH4Ligth,
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: double.infinity,
                height: 45.0,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          color: kBlueColor,
                          borderRadius: BorderRadius.all(Radius.circular(6.0))),
                      child: Center(
                          child: Text(
                        'Follow',
                        style: TextStyle(
                            color: kWhiteColor, fontFamily: 'RobotoMedium'),
                      )),
                    )),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          color: kLigthGreyColor,
                          borderRadius: BorderRadius.all(Radius.circular(6.0))),
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '125',
                            style: TextStyle(
                                color: kDarkTextColor,
                                fontFamily: 'RobotoBlack'),
                          ),
                          Text(
                            'Watched',
                            style: TextStyle(
                                color: kDarkTextColor,
                                fontFamily: 'RobotoLight'),
                          ),
                        ],
                      )),
                    )),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          color: kLigthGreyColor,
                          borderRadius: BorderRadius.all(Radius.circular(6.0))),
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '250',
                            style: TextStyle(
                                color: kDarkTextColor,
                                fontFamily: 'RobotoBlack'),
                          ),
                          Text(
                            'Want',
                            style: TextStyle(
                                color: kDarkTextColor,
                                fontFamily: 'RobotoLight'),
                          ),
                        ],
                      )),
                    )),
                  ],
                ),
              ),
              fineline(),
              Text(
                'Watched:',
                style: kH2Dark,
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 180.0,
                width: double.infinity,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    new VerySmallMovieCover(
                        image:
                            'http://t1.gstatic.com/images?q=tbn:ANd9GcRDqyVmig5f0BKFcrAnCYtd_03n-x8EsOHNHX3q061oWRHhYjue'),
                    SizedBox(width: 20.0),
                    new VerySmallMovieCover(
                        image:
                            'http://t3.gstatic.com/images?q=tbn:ANd9GcTeaf2FjncLHf4Qth42u6nHOQlcNbYOcwc3J791OOehRqh2PglF'),
                    SizedBox(width: 20.0),
                    new VerySmallMovieCover(
                        image:
                            'http://t2.gstatic.com/images?q=tbn:ANd9GcQ-Gxxk_inhbcl6HhpPcEZ7Kxnx0dxdx2J4Y97t8EdOa8QXB7oe'),
                    SizedBox(width: 20.0),
                    new VerySmallMovieCover(
                        image:
                            'http://t1.gstatic.com/images?q=tbn:ANd9GcTpx3Zycb8aqveBv9EgIZznfjXJKEvbJpDtna-ViQ3oYdYREjtD'),
                    SizedBox(width: 20.0),
                    new VerySmallMovieCover(
                        image:
                            'http://t1.gstatic.com/images?q=tbn:ANd9GcRygSRbllxO1ujw2_-7e0TqLFqvekkJBIB3pLsk7rTwx173V171'),
                    SizedBox(
                      width: 20.0,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
