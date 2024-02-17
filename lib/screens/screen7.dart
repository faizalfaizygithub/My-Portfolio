import 'package:cloud_firestore/cloud_firestore.dart';
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

  final CollectionReference portfolio =
      FirebaseFirestore.instance.collection('portfolio');
  void addToDb() {
    final data = {
      'name': _nameController.text,
      'email': _emailController.text,
      'message': _msgController.text,
    };
    portfolio.add(data);
  }

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
            action: () async {
              try {
                if (_msgController.text.isNotEmpty)
                // ignore: curly_braces_in_flow_control_structures
                if (_emailController.text.isNotEmpty) {
                  if (_nameController.text.isNotEmpty) {
                    addToDb();
                    Navigator.of(context).pushNamed(
                      '/SubmissionPage',
                    );
                  } else {
                    incompleateData();
                  }
                }
              } catch (e) {
                print('compleate details');
              }
            },
            color: const Color.fromARGB(255, 177, 160, 8),
          ),
        ),
        gyap(100, 0),
        const TriangleWidget()
      ],
    ));
  }

  void incompleateData() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            icon: Icon(Icons.dangerous_rounded),
            iconColor: Colors.red,
            title: Text(
              'Please full fill your form',
              style: blacksmallTexts,
            ),
          );
        });
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
          labelStyle: dbtxt,
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
