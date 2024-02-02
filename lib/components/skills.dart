import 'package:flutter/material.dart';
import 'package:portfolio/components/MyText.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '* Android & ios developer',
          style: blacksubHeadStyle,
        ),
        const SliderDa(),
        Text(
          '* FrontEnd & BackEnd ',
          style: blacksubHeadStyle,
        ),
        const SliderDa(),
        Text(
          '* Dart ',
          style: blacksubHeadStyle,
        ),
        const SliderDa(),
        Text(
          '* Git & GitHub',
          style: blacksubHeadStyle,
        ),
        const SliderDa(),
        Text(
          '* Firbase',
          style: blacksubHeadStyle,
        ),
        const SliderDa(),
        Text(
          '* ThirdParty Libraries',
          style: blacksubHeadStyle,
        ),
        const SliderDa(),
      ],
    );
  }
}

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
        autofocus: false,
        activeColor: const Color.fromARGB(255, 20, 13, 13),
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
