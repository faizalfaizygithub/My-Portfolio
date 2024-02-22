import 'package:flutter/material.dart';
import 'package:portfolio/components/assets.dart';
import 'package:portfolio/components/socialMedias.dart';

class TriangleWidget extends StatelessWidget {
  const TriangleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(alignment: AlignmentDirectional.bottomCenter, children: [
          Align(
            alignment: Alignment.center,
            child: CustomPaint(
              size: const Size(500, 100), // Set the size of the triangle
              painter: TrianglePainter(),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              flutterkilipic,
              alignment: Alignment.topCenter,
              width: 120,
              height: 120,
            ),
          ),
          Positioned(bottom: 22, child: SocialMedia()),
          const Align(
            alignment: Alignment.topCenter,
            child: Text(
              '@Faizal.All Rights Reserved',
              style: TextStyle(color: Colors.white, fontSize: 8),
            ),
          ),
        ]),
      ],
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color =
          const Color.fromARGB(255, 7, 61, 116) // Set the color of the triangle
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(size.width / 2, 0) // Move to the top-center point
      ..lineTo(size.width, size.height) // Draw a line to the bottom-right point
      ..lineTo(0, size.height) // Draw a line to the bottom-left point
      ..close(); // Close the path to complete the triangle

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
