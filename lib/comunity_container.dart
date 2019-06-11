import 'package:flutter/material.dart';
import 'constance_screen.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

class CommunityContainer extends StatelessWidget {
  CommunityContainer({this.header, this.firstIcon, this.secondIcon, this.thirdIcon, this.onTap});

  final String header;
  final String firstIcon;
  final String secondIcon;
  final String thirdIcon;
  final Function onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 140.0,
          width: double.infinity,
          margin: EdgeInsets.only(right: 20.0, top: 15.0, bottom: 5.0),
          decoration: BoxDecoration(
              color: kLigthGreyColor,
              borderRadius: BorderRadius.all(Radius.circular(4.0))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(firstIcon, style: TextStyle(fontSize: 30.0)),
                  Text(secondIcon, style: TextStyle(fontSize: 30.0)),
                  Text(thirdIcon, style: TextStyle(fontSize: 30.0)),
                ],
              ),

              Text(header, style: kH3,),
              Text('0 of 30', style: kH3Ligth,)
            ],
          )),
    );
  }
}
