import 'package:flutter/material.dart';
import 'sabitler.dart';

class IkonIcerik extends StatelessWidget {
  IkonIcerik({@required this.ikon, this.text});
  final IconData ikon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          ikon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(text, style: kEtiketStili
        )
      ],
    );
  }
}