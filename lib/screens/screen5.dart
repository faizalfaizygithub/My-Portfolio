import 'package:flutter/material.dart';
import 'package:portfolio/assets.dart';
import 'package:portfolio/forSkillText.dart';
import 'package:portfolio/gyap.dart';
import 'package:portfolio/portfoiloCard.dart';

class ScreenFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade300,
      child: Column(
        children: [
          Gyapp(gyap: 70),
          SkillText(
              textname: 'Portfolio ', txtweight: FontWeight.bold, txtSize: 35),
          Text('_____*_____'),
          Gyapp(gyap: 30),
          PortfolioCard(
            photo: shoppingpic,
            photoAction: () {},
          ),
          Gyapp(gyap: 30),
          PortfolioCard(
            photo: bloodpic,
            photoAction: () {},
          ),
          Gyapp(gyap: 30),
          PortfolioCard(
            photo: tripe2pic,
            photoAction: () {},
          ),
          Gyapp(gyap: 30),
          PortfolioCard(
            photo: instapic,
            photoAction: () {},
          ),
        ],
      ),
    );
  }
}
