import 'package:flutter/material.dart';
import 'package:portfolio/assets.dart';

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
                color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          const Text(
            '``***********``',
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
          Padding(
            padding: const EdgeInsets.only(right: 50, top: 10),
            child: Container(
              child: Column(
                children: [
                  const Text(
                    'Name: Muhammed Faisal v',
                    style: TextStyle(fontSize: 20),
                  ),
                  space,
                  const Text(
                    'Email: faizalfaizy648@gmail.com',
                    style: TextStyle(fontSize: 20),
                  ),
                  space,
                  const Text(
                    'Phone: +91 9847959648',
                    style: TextStyle(fontSize: 20),
                  ),
                  space,
                  const Text(
                    'Web Address: mywork.co.in/faisal',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
