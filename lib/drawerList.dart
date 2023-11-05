import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.all(15.0),
        child: TextButton(
          onPressed: () {},
          child: Text(
            txtname,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'my name ',
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}
