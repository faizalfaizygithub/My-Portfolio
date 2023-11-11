import 'package:flutter/material.dart';
import 'package:portfolio/assets.dart';
import 'package:portfolio/button.dart';
import 'package:portfolio/gyap.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Gyapp(gyap: 150),
          const Text(
            'About Me',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const Text('_____*_____'),
          Gyapp(gyap: 30),
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              dev2pic,
              fit: BoxFit.cover,
            ),
          ),
          Gyapp(gyap: 30),
          const Text(
            'Hello..',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              abouttitle,
              style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.black,
          ),
          MyData(
            textName: 'Name :',
            textName2: 'Muhammed Faisal v',
            fontWeight: FontWeight.bold,
          ),
          MyData(
            textName: 'Email :',
            textName2: 'faizalfaizy@gmail.com',
            fontWeight: FontWeight.bold,
          ),
          MyData(
            textName: 'Phone :',
            textName2: '+91 9847959648',
            fontWeight: FontWeight.bold,
          ),
          MyData(
            textName: 'Web Address  :',
            textName2: 'mywork.co.in/faizal',
            fontWeight: FontWeight.bold,
          ),
          Gyapp(gyap: 20),
          Buttons(),
          Gyapp(gyap: 40)
        ],
      ),
    );
  }
}

class MyData extends StatelessWidget {
  String textName;
  String textName2;
  dynamic fontWeight;
  MyData(
      {required this.textName,
      required this.textName2,
      required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: [
            Text(
              textName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: fontWeight,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              textName2,
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
