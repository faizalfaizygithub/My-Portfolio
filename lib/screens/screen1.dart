import 'package:flutter/material.dart';
import 'package:portfolio/assets.dart';
import 'package:portfolio/gyap.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Opacity(
        opacity: 0.8,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Gyapp(gyap: 40),
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
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.next_plan,
                    color: Colors.white,
                    size: 40,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
