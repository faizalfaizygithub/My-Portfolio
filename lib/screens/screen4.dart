import 'package:flutter/material.dart';
import 'package:portfolio/assets.dart';
import 'package:portfolio/forSkillText.dart';
import 'package:portfolio/gyap.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Column(children: [
              Gyapp(gyap: 20),
              SkillText(
                  textname: 'Services ',
                  txtweight: FontWeight.bold,
                  txtSize: 35),
              Text('_____*_____'),
              Gyapp(gyap: 20),
              ServiceCard(
                logo: flutterlogopic,
                caption: fluttercaption,
                headname: 'Flutter',
              ),
              Gyapp(gyap: 30),
              ServiceCard(
                headname: 'Dart',
                logo: dartlogopic,
                caption: dartcaption,
              ),
              Gyapp(gyap: 30),
              ServiceCard(
                logo: githublogopic,
                headname: 'GitHUb',
                caption: githubCaptions,
              ),
              Gyapp(gyap: 30),
              ServiceCard(
                logo: gitlogopic,
                headname: 'Git',
                caption: gitCaptions,
              ),
              Gyapp(gyap: 30),
              ServiceCard(
                logo: firebaselogopic,
                headname: 'Firebase',
                caption: firebasecaptions,
              ),
              Gyapp(gyap: 30),
              ServiceCard(
                logo: vslogopic,
                headname: 'Vs Code',
                caption: vsCption,
              ),
              Gyapp(gyap: 30),
            ]),
          ],
        ),
      ),
    );
  }
}

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
