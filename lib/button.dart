import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Buttons extends StatefulWidget {
  Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
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
            launchUrl(
                'https://media.licdn.com/dms/document/media/D561FAQE2ykPTaIksdA/feedshare-document-pdf-analyzed/0/1699805032908?e=1700697600&v=beta&t=JJqx5NKSenM6rSBq0jM0oreY_9_tADeSe-ueJPGemcA'
                    as Uri);
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
