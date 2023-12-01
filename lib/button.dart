import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Buttons extends StatefulWidget {
  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blueGrey),
          ),
          onPressed: () {
            _launchURL(
                'https://drive.google.com/file/d/15fb8guylWaFatfDM98RpQ-BQKThE7kTH/view?usp=sharing');
          },
          child: const Text(
            'Download CV',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Color.fromARGB(255, 196, 154, 19),
            ),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed('/ContactPage');
          },
          child: const Text(
            'Contact Me',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ]),
    );
  }
}
