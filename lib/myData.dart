import 'package:flutter/material.dart';

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
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
