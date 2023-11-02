import 'package:flutter/material.dart';
import 'package:portfolio/assets.dart';
import 'package:portfolio/forSkillText.dart';
import 'package:portfolio/gyap.dart';

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
