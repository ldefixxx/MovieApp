import 'package:flutter/material.dart';
import 'constance_screen.dart';
import 'movie_cover.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'trailer_screen.dart';
import 'upcomming_screen.dart';
import 'main.dart';
import 'test.dart';

class MovieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: SafeArea(
        child: Scaffold(
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
                          child: Icon(Icons.add_to_photos,
                              color: kMediumTextColor))),
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
            body: SlidingUpPanel(
              minHeight: 330.0,
              maxHeight: 900.0,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)),
              panel: Container(
                margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 4.0,
                      width: 70.0,
                      margin: EdgeInsets.only(bottom: 10.0),
                      decoration: BoxDecoration(
                          color: kLigthGreyColor,
                          borderRadius: BorderRadius.all(Radius.circular(2.0))),
                    ),
                    Container(
                      color: kWhiteColor,
                      height: 700.0,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text('Der König der Löwen',
                              style: TextStyle(
                                  fontSize: 20.0, fontFamily: 'RobotoBold')),
                          Text(
                            'Juli 18.2019',
                            style: kH3Ligth,
                          ),
                          SizedBox(height: 15.0),
                          Row(
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                margin: EdgeInsets.only(right: 10.0),
                                child: Center(child: Text('Want', style: kH3)),
                                height: 45.0,
                                decoration: BoxDecoration(
                                    color: kLigthGreyColor,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30.0))),
                              )),
                              Expanded(
                                  child: Container(
                                margin: EdgeInsets.only(left: 10.0),
                                child:
                                    Center(child: Text('Watched', style: kH3)),
                                height: 50.0,
                                decoration: BoxDecoration(
                                    color: kLigthGreyColor,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30.0))),
                              ))
                            ],
                          ),
                          new fineline(),
                          Text(
                            'Overview',
                            style: TextStyle(
                                fontSize: 16.0, fontFamily: 'RobotoBold'),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'Dem weisen Herrscherpaar Mufasa und Sarabi wird ein Thronfolger geboren. '
                            'Löwenjunge Simba verbringt mit seiner Freundin Nala eine glückliche Kindheit '
                            'unter der Sonne Afrikas, die jäh beendet wird, als Simbas machthungriger Onkel Scar '
                            'eine böse Intrige gegen die Königsfamilie spinnt. Simba ist gezwungen, seine Heimat '
                            'zu verlassen.',
                            style: TextStyle(
                                fontSize: 16.0, fontFamily: 'RobotoLigth'),
                          ),
                          new fineline(),
                          Container(
                            height: 250.0,
                            width: double.infinity,
                            child: ListView(
                              children: <Widget>[
                                Text(
                                  'Genre',
                                  style: TextStyle(
                                      fontSize: 16.0, fontFamily: 'RobotoBold'),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                  height: 50.0,
                                  width: double.infinity,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                            color: kLigthGreyColor,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50.0))),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: Center(
                                          child: Text(
                                            ' 👨‍👩‍👦‍👦 Familie',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontFamily: 'RobotoBold'),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 15.0),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: kLigthGreyColor,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50.0))),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: Center(
                                          child: Text(
                                            ' 🐲 Animation',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontFamily: 'RobotoBold'),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 15.0),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: kLigthGreyColor,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50.0))),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: Center(
                                          child: Text(
                                            ' 🧟‍♀ Horror',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontFamily: 'RobotoBold'),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 15.0),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: kLigthGreyColor,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50.0))),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: Center(
                                          child: Text(
                                            ' 🗺️ Abenteuer',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontFamily: 'RobotoBold'),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 15.0),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: kLigthGreyColor,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50.0))),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: Center(
                                          child: Text(
                                            ' 🏴 Drama',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontFamily: 'RobotoBold'),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 15.0),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: kLigthGreyColor,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50.0))),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: Center(
                                          child: Text(
                                            ' 🤺 Action',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontFamily: 'RobotoBold'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15.0),
                                Text('Artist',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'RobotoBold')),
                                Container(
                                  width: 200.0,
                                  height: 200.0,
                                  color: kWhiteColor,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 0.0, vertical: 0.0),
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      new Artist(
                                          artistName: 'Donald Glover',
                                          movieRole: 'Simba',
                                          image:
                                              'https://upload.wikimedia.org/wikipedia/commons/2/2a/Donald_Glover_TIFF_2015.jpg'),
                                      SizedBox(width: 15.0),
                                      new Artist(
                                          artistName: 'Beyoncé Giselle',
                                          movieRole: 'Nala',
                                          image:
                                              'https://cdn1.spiegel.de/images/image-1187215-860_poster_16x9-pjur-1187215.jpg'),
                                      SizedBox(width: 15.0),
                                      new Artist(
                                          artistName: 'Eric André',
                                          movieRole: 'Banzia',
                                          image:
                                              'https://vignette.wikia.nocookie.net/disenchantment/images/2/22/Eric_Andre.jpg/revision/latest?cb=20180704093150&path-prefix=de'),
                                      SizedBox(width: 15.0),
                                      new Artist(
                                          artistName: 'Seth Rogen',
                                          movieRole: 'Pumba',
                                          image:
                                              'https://upload.wikimedia.org/wikipedia/commons/1/19/Seth_Rogen_by_Gage_Skidmore_2.jpg'),
                                      SizedBox(width: 15.0),
                                      new Artist(
                                          artistName: 'John Oliver',
                                          movieRole: 'Zazu',
                                          image:
                                              'https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/John_Oliver_November_2016.jpg/174px-John_Oliver_November_2016.jpg'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              body: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: kLigthGreyColor),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 30.0),
                    BigMovieCover(
                      image:
                          'http://de.web.img3.acsta.net/pictures/19/05/02/15/29/0134347.jpg',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TestVideo(),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}

class Artist extends StatelessWidget {
  Artist({this.image, this.artistName, this.movieRole});

  final String image;
  final String artistName;
  final String movieRole;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 5.0),
        CircleAvatar(
          radius: 36,
          child: ClipOval(
            child: Image.network(
              image,
              width: 72,
              height: 72,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 3.0),
        Container(
            width: 70.0,
            child: Text(artistName,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 17.0,
                    color: kDarkTextColor,
                    fontFamily: 'RobotoMedium'))),
        Container(
          width: 60.0,
          child: Text(
            movieRole,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 17.0,
                color: kMediumTextColor,
                fontFamily: 'RobotoLight'),
          ),
        )
      ],
    );
  }
}

class fineline extends StatelessWidget {
  const fineline({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      height: 1.0,
      width: double.infinity,
      color: Color(0xffEFEFEF),
    );
  }
}
