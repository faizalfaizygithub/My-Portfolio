import 'package:flutter/material.dart';
import 'package:portfolio/gyap.dart';
import 'package:portfolio/screens/lastScreen.dart';
import 'package:portfolio/textfieldCard.dart';

class ScreenSeven extends StatelessWidget {
  const ScreenSeven({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        Gyapp(gyap: 30),
        TextFildCard(textName: 'Name', count: 2),
        TextFildCard(textName: 'Email', count: 2),
        TextFildCard(textName: 'Message', count: 8),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: ListTile(
            leading: ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 196, 154, 19))),
              onPressed: () {},
              child: const Text(
                'Submit',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ),
        Gyapp(gyap: 100),
        TriangleWidget()
      ],
    ));
  }
}
