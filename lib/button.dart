import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          style: const ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(206, 13, 132, 136))),
          onPressed: () {},
          child: const Text(
            'Download C V',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        ElevatedButton(
          style: const ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(206, 228, 234, 241))),
          onPressed: () {},
          child: const Text(
            'Contact Me',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
