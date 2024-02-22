import 'package:flutter/material.dart';
import 'package:portfolio/components/MyText.dart';
import 'package:portfolio/components/assets.dart';
import 'package:portfolio/components/skills.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 221, 223, 224),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(children: [
            gyap(190, 0),
            Text(
              'Skills',
              style: BlckHeadStyle,
            ),
            const Text('_____*_____'),
            gyap(30, 0),
            Text('Flutter Development', style: blacksubHeadStyle),
            gyap(15, 0),
            Text(
              skilltitles,
              style: blacksmallTexts,
            ),
            gyap(20, 0),
            const Skills()
          ]),
        ),
      ),
    );
  }
}
