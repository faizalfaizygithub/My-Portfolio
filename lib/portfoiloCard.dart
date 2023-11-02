import 'package:flutter/material.dart';

class PortfolioCard extends StatelessWidget {
  String photo;
  void Function() photoAction;
  PortfolioCard({super.key, required this.photo, required this.photoAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(color: Colors.black, offset: Offset(7, 6), blurRadius: 15)
          ]),
      child: Column(children: [
        Container(
          height: 270,
          width: 350,
          child: TextButton(
            onPressed: photoAction,
            child: Image.asset(
              photo,
            ),
          ),
        ),
      ]),
    );
  }
}
