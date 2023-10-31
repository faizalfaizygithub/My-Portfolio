import 'package:flutter/material.dart';

class SkillText extends StatelessWidget {
  String textname;
  dynamic txtweight;
  dynamic txtSize;
  SkillText({
    required this.textname,
    required this.txtweight,
    required this.txtSize,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      textname,
      style: TextStyle(fontSize: txtSize.toDouble(), fontWeight: txtweight),
    );
  }
}
