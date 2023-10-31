import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Opacity(
        opacity: 0.8,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                'Hello',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Iam Developer',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Im a Mobile appplication & Web developer based in india . I make the visual for website to be more interactive',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              const SizedBox(
                height: 240,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_drop_down_circle,
                    color: Colors.white,
                    size: 35,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
