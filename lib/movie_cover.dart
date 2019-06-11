import 'package:flutter/material.dart';
import 'constance_screen.dart';

class SmallMovieCover extends StatelessWidget {
  SmallMovieCover({this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(6.0)),
        child: Image.network(image, scale: 1),
      ),
    );
  }
}

class VerySmallMovieCover extends StatelessWidget {
  VerySmallMovieCover({this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(6.0)),
        child: Image.network(image, scale: 4),
      ),
    );
  }
}




class BigMovieCover extends StatelessWidget {
  BigMovieCover({this.image, this.onTap});

  final String image;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
            child: Image.network(image, scale: 6)),
      ),
    );
  }
}

class MediumMovieCover extends StatelessWidget {
  MediumMovieCover({this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(6.0)),
        child: Image.network(image, scale: 6),
      ),
    );
  }
}
