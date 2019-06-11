import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'constance_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Video Example',
      home: VideoExample(),
    );
  }
}

class VideoExample extends StatefulWidget {
  @override
  VideoState createState() => VideoState();
}

class VideoState extends State<VideoExample> {
  VideoPlayerController playerController;
  VoidCallback listener;

  @override
  void initState() {
    super.initState();
    listener = () {
      setState(() {});
    };
  }

  void createVideo() {
    if (playerController == null) {
      playerController = VideoPlayerController.asset("videos/LionKing.mp4")
        ..addListener(listener)
        ..setVolume(1.0)
        ..initialize()
        ..play();
    } else {
      if (playerController.value.isPlaying) {
        playerController.pause();
      } else {
        playerController.initialize();
        playerController.play();
      }
    }
  }

  @override
  void deactivate() {
    playerController.setVolume(0.0);
    playerController.removeListener(listener);
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: AspectRatio(
            aspectRatio: 1280 / 720,
            child: Container(
              child: (playerController != null
                  ? VideoPlayer(
                playerController,
              )
                  : Container()),
            ),
          )),
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

          SizedBox(width: 20.0),

          GestureDetector(
            onTap: (){
              createVideo();
              playerController.play();
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
                  ' 📺 Play',
                  style: TextStyle(
                      fontSize: 15.0, fontFamily: 'RobotoBold'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
