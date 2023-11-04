import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      ElevatedButton(
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blueGrey)),
        onPressed: () {},
        child: const Text(
          'Download CV',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      ElevatedButton(
        style: const ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll(Color.fromARGB(255, 196, 154, 19))),
        onPressed: () {},
        child: const Text(
          'Contact Me',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    ]);
  }
}
