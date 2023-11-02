import 'package:flutter/material.dart';
import 'package:portfolio/assets.dart';
import 'package:portfolio/forSkillText.dart';
import 'package:portfolio/getInTouchCard.dart';
import 'package:portfolio/gyap.dart';
import 'package:portfolio/serviceCard.dart';

class ScreenSix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        Gyapp(gyap: 200),
        SkillText(
            textname: 'Get In Touch ', txtweight: FontWeight.bold, txtSize: 35),
        Text('_____*_____'),
        Gyapp(gyap: 50),
        GetinTouchCard(
          icon: Icons.phone_android,
          caption: '+91 9847959648',
          headname: 'Phone',
        ),
        Gyapp(gyap: 30),
        GetinTouchCard(
          headname: 'Email',
          icon: Icons.email,
          caption: 'faizalfaizy648@gmail.com',
        ),
        Gyapp(gyap: 30),
        GetinTouchCard(
          icon: Icons.location_on,
          headname: 'Place',
          caption: 'Melattur,Malappuram,Kerala',
        ),
        Gyapp(gyap: 30),
      ]),
    );
  }
}
