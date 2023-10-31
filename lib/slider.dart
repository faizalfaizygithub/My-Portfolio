import 'package:flutter/material.dart';

class SliderDa extends StatefulWidget {
  const SliderDa({super.key});

  @override
  State<SliderDa> createState() => _SliderDaState();
}

class _SliderDaState extends State<SliderDa> {
  double _currentSliderValue = 500;
  @override
  Widget build(BuildContext context) {
    return Slider(
        thumbColor: Colors.white,
        activeColor: Color.fromARGB(255, 20, 13, 13),
        value: _currentSliderValue,
        min: 0,
        max: 600,
        onChanged: (value) {
          setState(() {
            _currentSliderValue = value;
          });
        });
  }
}
