import 'package:flutter/material.dart';

class DashedDivider extends StatelessWidget {
  final double height;
  final Color color;
  final double dashWidth;
  final double dashSpace;

  const DashedDivider({
    Key? key,
    this.height = 1,
    this.color = Colors.black,
    this.dashWidth = 5,
    this.dashSpace = 3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(double.infinity, height),
      painter: DashedDividerPainter(color, dashWidth, dashSpace),
    );
  }
}

class DashedDividerPainter extends CustomPainter {
  final Color color;
  final double dashWidth;
  final double dashSpace;

  DashedDividerPainter(this.color, this.dashWidth, this.dashSpace);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = size.height;

    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, size.height / 2),
        Offset(startX + dashWidth, size.height / 2),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
