import 'package:flutter/material.dart';
import 'package:portfolio/forSkillText.dart';
import 'package:portfolio/gyap.dart';
import 'package:portfolio/screens/screen7.dart';

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
        ScreenSeven()
      ]),
    );
  }
}

class GetinTouchCard extends StatelessWidget {
  String headname;
  IconData icon;
  String caption;
  GetinTouchCard({
    super.key,
    required this.icon,
    required this.caption,
    required this.headname,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            IconButton(onPressed: () {}, icon: Icon(icon)),
            Gyapp(gyap: 20),
            SkillText(
                textname: headname, txtweight: FontWeight.bold, txtSize: 20),
            Gyapp(gyap: 10),
            SkillText(
                textname: caption, txtweight: FontWeight.normal, txtSize: 17),
          ],
        ),
      ),
    );
  }
}
