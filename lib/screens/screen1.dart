import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/MyText.dart';
import 'package:portfolio/components/assets.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            gyap(30, 0),
            Text('Hello', style: WhiteHeadStyle),
            gyap(20, 0),
            AnimatedTextKit(repeatForever: true, animatedTexts: [
              TyperAnimatedText('I Am Developer', textStyle: subHeadStyle),
              TyperAnimatedText('I Am Creative', textStyle: subHeadStyle)
            ]),
            gyap(30, 0),
            Text(HomePagetitles, style: smallTexts),
            gyap(240, 0),
          ],
        ),
      ),
    );
  }
}

class BgPhoto extends StatelessWidget {
  const BgPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Opacity(
        opacity: 1,
        child: Image.asset(
          code3pic,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
