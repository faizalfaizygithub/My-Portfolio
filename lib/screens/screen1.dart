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
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            code3pic,
            fit: BoxFit.cover,
          ),
        ),
        Opacity(
          opacity: 0.8,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
        ),
      ],
    );
  }
}
