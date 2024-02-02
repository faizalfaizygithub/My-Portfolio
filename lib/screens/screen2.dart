import 'package:flutter/material.dart';
import 'package:portfolio/components/MyText.dart';
import 'package:portfolio/components/assets.dart';
import 'package:portfolio/components/button.dart';
import 'package:url_launcher/url_launcher.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SingleChildScrollView(
        child: Column(
          children: [
            gyap(150, 0),
            Text('About Me', style: BlckHeadStyle),
            const Text('_____*_____'),
            gyap(30, 0),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                dev2pic,
                fit: BoxFit.cover,
              ),
            ),
            gyap(30, 0),
            Text('Hello..', style: BlckHeadStyle),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(abouttitle, style: blacksmallTexts),
            ),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            MyData(
              textName: 'Name :',
              textName2: 'Muhammed Faisal v',
              fontWeight: FontWeight.bold,
            ),
            MyData(
              textName: 'Email :',
              textName2: 'faizalfaizy648@gmail.com',
              fontWeight: FontWeight.bold,
            ),
            MyData(
              textName: 'Phone :',
              textName2: '+91 9847959648',
              fontWeight: FontWeight.bold,
            ),
            MyData(
              textName: 'Web Address  :',
              textName2: 'mywork.co.in/faizal',
              fontWeight: FontWeight.bold,
            ),
            gyap(20, 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Buttons(
                    color: Colors.blueGrey,
                    text: 'Download Cv',
                    action: () {
                      _launchURL(
                          'https://drive.google.com/file/d/15fb8guylWaFatfDM98RpQ-BQKThE7kTH/view?usp=sharing');
                    }),
                Buttons(
                    color: Color.fromARGB(255, 177, 160, 8),
                    text: 'Contact Me',
                    action: () {
                      Navigator.pushNamed(context, '/ContactPage');
                    })
              ],
            ),
            gyap(40, 0),
          ],
        ),
      ),
    );
  }
}

class MyData extends StatelessWidget {
  String textName;
  String textName2;
  dynamic fontWeight;
  MyData(
      {required this.textName,
      required this.textName2,
      required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Text(
            textName,
            style: blacksmallTexts,
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(textName2, style: blacksmallTexts)
        ],
      ),
    );
  }
}
