import 'package:flutter/material.dart';
import 'package:portfolio/assets.dart';
import 'package:portfolio/forSkillText.dart';
import 'package:portfolio/gyap.dart';

class ScreenFive extends StatefulWidget {
  const ScreenFive({super.key});

  @override
  State<ScreenFive> createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade100,
      child: Column(
        children: [
          Gyapp(gyap: 220),
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
          Gyapp(gyap: 30),
        ],
      ),
    );
  }
}

class PortfolioCard extends StatelessWidget {
  String photo;
  void Function() photoAction;
  PortfolioCard({super.key, required this.photo, required this.photoAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(color: Colors.black, offset: Offset(7, 6), blurRadius: 15)
          ]),
      child: Column(children: [
        Container(
          height: 270,
          width: 350,
          child: TextButton(
            onPressed: photoAction,
            child: Image.asset(
              photo,
            ),
          ),
        ),
      ]),
    );
  }
}
