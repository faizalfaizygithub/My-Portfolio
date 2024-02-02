import 'package:flutter/material.dart';
import 'package:portfolio/components/MyText.dart';
import 'package:portfolio/screens/screen7.dart';

class ScreenSix extends StatefulWidget {
  const ScreenSix({super.key});

  @override
  State<ScreenSix> createState() => _ScreenSixState();
}

class _ScreenSixState extends State<ScreenSix> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SingleChildScrollView(
        child: Column(children: [
          gyap(200, 0),
          Text(
            'Get In Touch',
            style: BlckHeadStyle,
          ),
          Text('_____*_____'),
          gyap(50, 0),
          GetinTouchCard(
            icon: Icons.phone_android,
            caption: '+91 9847959648',
            headname: 'Phone',
          ),
          gyap(30, 0),
          GetinTouchCard(
            headname: 'Email',
            icon: Icons.email,
            caption: 'faizalfaizy648@gmail.com',
          ),
          gyap(30, 0),
          GetinTouchCard(
            icon: Icons.location_on,
            headname: 'Place',
            caption: 'Melattur,Malappuram,Kerala',
          ),
          gyap(30, 0),
          ScreenSeven()
        ]),
      ),
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
            gyap(30, 0),
            Text(
              headname,
              style: blacksubHeadStyle,
            ),
            gyap(10, 0),
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
