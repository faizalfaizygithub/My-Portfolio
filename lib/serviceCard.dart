import 'package:flutter/material.dart';
import 'package:portfolio/assets.dart';
import 'package:portfolio/forSkillText.dart';
import 'package:portfolio/gyap.dart';

class ServiceCard extends StatelessWidget {
  String headname;
  String logo;
  String caption;
  ServiceCard({
    super.key,
    required this.logo,
    required this.caption,
    required this.headname,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(color: Colors.black, offset: Offset(7, 6), blurRadius: 15)
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                logo,
              ),
            ),
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
