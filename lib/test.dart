import 'package:flutter/material.dart';
import 'package:youtube_player/youtube_player.dart';
import 'constance_screen.dart';

class TestVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: Scaffold(
        body: Center(
          child: YoutubePlayer(
          context: context,
          source: "https://youtu.be/5ZNHFcY6w38",
          quality: YoutubeQuality.MEDIUM,
          aspectRatio: 16 / 9,
      ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                    color: kLigthGreyColor,
                    borderRadius:
                    BorderRadius.all(Radius.circular(50.0))),
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Center(
                  child: Text(
                    ' 🚶‍♂ Back',
                    style: TextStyle(
                        fontSize: 15.0, fontFamily: 'RobotoBold'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
