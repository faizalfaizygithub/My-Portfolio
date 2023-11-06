import 'package:flutter/material.dart';
import 'package:portfolio/gyap.dart';
import 'package:portfolio/screens/lastScreen.dart';

class ScreenSeven extends StatefulWidget {
  const ScreenSeven({super.key});

  @override
  State<ScreenSeven> createState() => _ScreenSevenState();
}

class _ScreenSevenState extends State<ScreenSeven> {
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

class TextFildCard extends StatelessWidget {
  String textName;
  int count;

  TextFildCard({required this.textName, required this.count});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          label: Text(textName),
          labelStyle: const TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade100,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.blueAccent,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        maxLines: count,
      ),
    );
  }
}
