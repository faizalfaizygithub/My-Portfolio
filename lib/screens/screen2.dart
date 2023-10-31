import 'package:flutter/material.dart';
import 'package:portfolio/assets.dart';
import 'package:portfolio/button.dart';
import 'package:portfolio/myData.dart';

class ScreenTwo extends StatelessWidget {
  var space = const Divider(height: 10);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        const Text(
          'About Me',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 35),
        ),
        const Text(
          '>>>>>>>>>>>',
          style: TextStyle(fontSize: 30),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            pro1pic,
            fit: BoxFit.cover,
          ),
        ),
        const Text(
          'Hello..',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
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
        space,
        Buttons()
      ],
    ));
  }
}