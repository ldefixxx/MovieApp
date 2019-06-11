import 'package:flutter/material.dart';
import 'constance_screen.dart';
import 'main.dart';
import 'movie_cover.dart';
import 'movie_screen.dart';
import 'profile_screen.dart';
import 'social_screen.dart';
import 'search_screen.dart';

class Upcomming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Color(0xFFFCFCFC)),
        home: new UpcommingContent(),
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
        }
    );
  }
}

class UpcommingContent extends StatelessWidget {
  const UpcommingContent({
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
                    Icon(Icons.add_to_photos, color: kBlueColor))),
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
      body: Container(
        child: Container(
          margin: EdgeInsets.only(left: 20.0, right: 20.0),
          height: double.infinity,
          width: double.infinity,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 40.0, bottom: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Upcomming', style: kH1),
                      Text(
                        'Set reminder for the next Movies',
                        style: kH2,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 575.0,
                  width: double.infinity,
                  child: ListView(
                    children: <Widget>[
                      UpcommingMovieContainer(
                        titel: 'Robin Hood',
                        release: '15.Juli.2019',
                        rate: 7.9,
                        image:
                        'http://t3.gstatic.com/images?q=tbn:ANd9GcTDvUD6EzmCL3841ygjo_ijGSrSQYHz7LFc9i406PU_k3ar46Xf',
                      ),
                      fineline(),
                      UpcommingMovieContainer(
                        image:
                        'http://t3.gstatic.com/images?q=tbn:ANd9GcSI7TgMY32oJYDzg5J5CxVMr1gNmuTaJh029en-YV6QX7CkbOy9',
                        titel: 'Pokémon: Meisterdetektiv Pikachu',
                        release: '17.Juli.2019',
                        rate: 8.4,
                      ),
                      fineline(),
                      UpcommingMovieContainer(
                        image:
                        'http://t1.gstatic.com/images?q=tbn:ANd9GcRjOpz9mk9OfMkVCoDh6Y9RkdpW5jF5x3yez6PdfmAOPTbaJtzh',
                        titel: 'Avengers: Endgame',
                        release: '20.Juli.2019',
                        rate: 9.1,
                      ),
                      fineline(),
                      UpcommingMovieContainer(
                        image:
                        'http://t3.gstatic.com/images?q=tbn:ANd9GcTeaf2FjncLHf4Qth42u6nHOQlcNbYOcwc3J791OOehRqh2PglF',
                        titel: 'Aladdin',
                        release: '24.Juli.2019',
                        rate: 6.8,
                      ),
                      fineline(),
                      UpcommingMovieContainer(
                        image:
                        'http://t1.gstatic.com/images?q=tbn:ANd9GcR6VyStlx6kaLemufWjb1qApm3xcr7xHy5xpkAaThMmrVocHm8_',
                        titel: 'BrightBurn',
                        release: '30.Juli.2019',
                        rate: 5.7,
                      ),
                      SizedBox(
                        height: 30.0,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UpcommingMovieContainer extends StatelessWidget {
  UpcommingMovieContainer({this.image, this.titel, this.release, this.rate});

  final String image;
  final String titel;
  final String release;
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180.0,
      child: Row(
        children: <Widget>[
          MediumMovieCover(image: image),
          SizedBox(width: 15.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 175.0,
                child: Text(
                  titel,
                  style: TextStyle(
                      fontFamily: 'RobotoBlack',
                      fontSize: 23.0,
                      color: kHeavyDarkTextColor),
                ),
              ),
              Text(
                release,
                style: TextStyle(
                    fontFamily: 'RobotoBold',
                    fontSize: 20.0,
                    color: kMediumTextColor),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                decoration: BoxDecoration(
                    color: kLigthGreyColor,
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Center(
                  child: Row(
                    children: <Widget>[
                      Text(
                        ' 💙 ',
                        style:
                        TextStyle(fontSize: 15.0, fontFamily: 'RobotoBold'),
                      ),
                      Text(
                        rate.toString(),
                        style:
                        TextStyle(fontSize: 15.0, fontFamily: 'RobotoBold'),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
