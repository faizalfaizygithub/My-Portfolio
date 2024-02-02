import 'package:flutter/material.dart';
import 'package:portfolio/components/MyText.dart';
import 'package:portfolio/components/assets.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SingleChildScrollView(
        child: Column(children: [
          gyap(200, 0),
          Text(
            'Services',
            style: BlckHeadStyle,
          ),
          Text('_____*_____'),
          gyap(30, 0),
          ServiceCard(
            logo: flutterlogopic,
            caption: fluttercaption,
            headname: 'Flutter',
          ),
          gyap(30, 0),
          ServiceCard(
            headname: 'Dart',
            logo: dartlogopic,
            caption: dartcaption,
          ),
          gyap(30, 0),
          ServiceCard(
            logo: githublogopic,
            headname: 'GitHUb',
            caption: githubCaptions,
          ),
          gyap(30, 0),
          ServiceCard(
            logo: gitlogopic,
            headname: 'Git',
            caption: gitCaptions,
          ),
          gyap(30, 0),
          ServiceCard(
            logo: firebaselogopic,
            headname: 'Firebase',
            caption: firebasecaptions,
          ),
          gyap(30, 0),
          ServiceCard(
            logo: vslogopic,
            headname: 'Vs Code',
            caption: vsCption,
          ),
          gyap(30, 0),
        ]),
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
      height: 400,
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
              radius: 25,
              backgroundImage: AssetImage(
                logo,
              ),
            ),
            gyap(20, 0),
            Text(
              headname,
              style: blacksubHeadStyle,
            ),
            gyap(20, 0),
            Text(
              caption,
              style: blacksmallTexts,
            ),
          ],
        ),
      ),
    );
  }
}
