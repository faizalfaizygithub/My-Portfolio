import 'package:flutter/material.dart';
import 'package:portfolio/components/MyText.dart';
import 'package:portfolio/components/button.dart';
import 'package:portfolio/screens/lastScreen.dart';

class ScreenSeven extends StatefulWidget {
  const ScreenSeven({super.key});

  @override
  State<ScreenSeven> createState() => _ScreenSevenState();
}

class _ScreenSevenState extends State<ScreenSeven> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _msgController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        gyap(30, 0),
        TextFildCard(
          textName: 'Name',
          count: 1,
          controller: _nameController,
        ),
        TextFildCard(
          textName: 'Email',
          count: 1,
          controller: _emailController,
        ),
        TextFildCard(
          textName: 'Message',
          count: 5,
          controller: _msgController,
        ),
        gyap(30, 0),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Buttons(
            text: 'Submit',
            action: () {},
            color: Color.fromARGB(255, 177, 160, 8),
          ),
        ),
        gyap(100, 0),
        TriangleWidget()
      ],
    ));
  }
}

class TextFildCard extends StatelessWidget {
  String textName;
  int count;
  TextEditingController controller;
  TextFildCard(
      {super.key,
      required this.textName,
      required this.controller,
      required this.count});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          label: Text(textName),
          labelStyle: blacksmallTexts,
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
