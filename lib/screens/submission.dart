import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/components/MyText.dart';

class SubmissionPage extends StatefulWidget {
  const SubmissionPage({super.key});

  @override
  State<SubmissionPage> createState() => _SubmissionPageState();
}

class _SubmissionPageState extends State<SubmissionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 61, 116),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset('assets/json/hand.json', height: 300, width: 300),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(
              'Your Submission successfully Compleated',
              style: NameHed,
            ),
          ),
          gyap(20, 0),
          Text(
            'Thank You',
            style: WhiteHeadStyle,
          )
        ],
      ),
    );
  }
}
