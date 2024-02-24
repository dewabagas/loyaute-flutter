import 'package:flutter/material.dart';

class PageCurved extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 523,
      height: 258,
      transform: Matrix4.translationValues(-74, -160, 0),
      child: CustomPaint(
        painter: CurvePainter(),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.blue // Ganti dengan warna yang sesuai
      ..style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(0, size.height * 0.5);
    path.quadraticBezierTo(
        size.width * 0.25, size.height * 0.25, size.width * 0.5, 0);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.25, size.width, size.height * 0.5);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
