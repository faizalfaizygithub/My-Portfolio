import 'package:flutter/material.dart';
import 'package:portfolio/components/MyText.dart';
import 'package:portfolio/components/socialMedias.dart';

class DrawerList extends StatefulWidget {
  const DrawerList({super.key});

  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/icon/propic.jpg'),
            maxRadius: 60,
          ),
          gyap(10, 0),
          SocialMedia(),
          gyap(10, 0),
          const Divider(
            thickness: 2,
            color: Colors.black54,
            indent: 40,
            endIndent: 40,
          ),
          ListOfDrawer(
            icon: Icons.home,
            txtname: 'Home',
            txtAction: () {
              Navigator.of(context).pushNamed('/HomePage');
            },
          ),
          ListOfDrawer(
            icon: Icons.person_2,
            txtname: 'About Me',
            txtAction: () {
              Navigator.of(context).pushNamed('/AboutmePage');
            },
          ),
          ListOfDrawer(
            icon: Icons.now_widgets_rounded,
            txtname: 'Skills',
            txtAction: () {
              Navigator.of(context).pushNamed('/SkillsPage');
            },
          ),
          ListOfDrawer(
            icon: Icons.miscellaneous_services_rounded,
            txtname: 'Services',
            txtAction: () {
              Navigator.of(context).pushNamed('/ServicesPage');
            },
          ),
          ListOfDrawer(
            icon: Icons.work,
            txtname: 'Portfolio',
            txtAction: () {
              Navigator.of(context).pushNamed('/PortfolioPage');
            },
          ),
          ListOfDrawer(
            icon: Icons.contact_support,
            txtname: 'Contact',
            txtAction: () {
              Navigator.of(context).pushNamed('/ContactPage');
            },
          ),
        ]);
  }
}

class ListOfDrawer extends StatelessWidget {
  String txtname;
  void Function() txtAction;
  IconData icon;
  ListOfDrawer(
      {super.key,
      required this.txtname,
      required this.icon,
      required this.txtAction});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton.icon(
        autofocus: true,
        icon: Icon(
          icon,
          color: Colors.blueGrey,
        ),
        onPressed: txtAction,
        label: Text(txtname, style: blacksubHeadStyle),
      ),
    );
  }
}
