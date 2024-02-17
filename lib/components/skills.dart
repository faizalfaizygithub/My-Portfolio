import 'package:flutter/material.dart';
import 'package:portfolio/components/MyText.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        '* Android & ios developer',
        style: blacksubHeadStyle,
      ),
      _divider(50),
      gyap(20, 0),
      Text(
        '* FrontEnd & BackEnd ',
        style: blacksubHeadStyle,
      ),
      _divider(50),
      gyap(20, 0),
      Text(
        '* Dart ',
        style: blacksubHeadStyle,
      ),
      _divider(80),
      gyap(20, 0),
      Text(
        '* Git & GitHub',
        style: blacksubHeadStyle,
      ),
      _divider(50),
      gyap(20, 0),
      Text(
        '* Firbase',
        style: blacksubHeadStyle,
      ),
      _divider(50),
      gyap(20, 0),
      Text(
        '* ThirdParty Libraries',
        style: blacksubHeadStyle,
      ),
      _divider(100),
      gyap(50, 0),
    ]);
  }

  _divider(double endValue) {
    return Divider(
      thickness: 4,
      color: const Color.fromARGB(255, 7, 61, 116),
      indent: 10,
      endIndent: endValue,
    );
  }
}
