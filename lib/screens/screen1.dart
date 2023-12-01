import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/assets.dart';
import 'package:portfolio/gyap.dart';

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
                Gyapp(gyap: 30),
                const Text(
                  'Hello',
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    fontSize: 35,
                  ),
                ),
                Gyapp(gyap: 20),
                AnimatedTextKit(repeatForever: true, animatedTexts: [
                  TyperAnimatedText(
                    'I Am Developer',
                    textStyle: const TextStyle(
                        fontSize: 30,
                        fontFamily: 'my name',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  TyperAnimatedText('I Am Creative',
                      textStyle: const TextStyle(
                          fontSize: 30,
                          fontFamily: 'my name',
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ]),
                Gyapp(gyap: 30),
                Text(
                  HomePagetitles,
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                Gyapp(gyap: 240),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
