import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        ListOfDrawer(
          txtname: 'Home',
          txtAction: () {
            Navigator.of(context).pushNamed('/HomePage');
          },
        ),
        ListOfDrawer(
          txtname: 'About Me',
          txtAction: () {
            Navigator.of(context).pushNamed('/AboutmePage');
          },
        ),
        ListOfDrawer(
          txtname: 'Skills',
          txtAction: () {
            Navigator.of(context).pushNamed('/SkillsPage');
          },
        ),
        ListOfDrawer(
          txtname: 'Services',
          txtAction: () {
            Navigator.of(context).pushNamed('/ServicesPage');
          },
        ),
        ListOfDrawer(
          txtname: 'Portfolio',
          txtAction: () {
            Navigator.of(context).pushNamed('/PortfolioPage');
          },
        ),
        ListOfDrawer(
          txtname: 'Contact',
          txtAction: () {
            Navigator.of(context).pushNamed('/ContactPage');
          },
        ),
      ]),
    );
  }
}

class ListOfDrawer extends StatelessWidget {
  String txtname;
  void Function() txtAction;
  ListOfDrawer({required this.txtname, required this.txtAction});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextButton(
        onPressed: txtAction,
        child: Text(
          txtname,
          style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'my name ',
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
