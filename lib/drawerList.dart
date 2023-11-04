import 'package:flutter/material.dart';
import 'package:portfolio/myData.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        ListOfDrawer(
          txtname: 'Menu',
        ),
        ListOfDrawer(
          txtname: 'About Me',
        ),
        ListOfDrawer(
          txtname: 'Skills',
        ),
        ListOfDrawer(
          txtname: 'Services',
        ),
        ListOfDrawer(
          txtname: 'Portfolio',
        ),
        ListOfDrawer(
          txtname: 'Contact',
        ),
      ]),
    );
  }
}

class ListOfDrawer extends StatelessWidget {
  String txtname;

  ListOfDrawer({required this.txtname});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Text(
        txtname,
        style: const TextStyle(
            fontSize: 20, fontFamily: 'my name', fontWeight: FontWeight.bold),
      ),
    );
  }
}
