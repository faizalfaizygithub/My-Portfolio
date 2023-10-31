import 'package:flutter/material.dart';

class Gyapp extends StatelessWidget {
  int gyap;
  Gyapp({
    required this.gyap,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: gyap.toDouble(),
    );
  }
}
