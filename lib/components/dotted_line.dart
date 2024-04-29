import 'package:flutter/material.dart';

class DottedLine extends StatelessWidget {
  final double height;
  final Color color;
  final double strokeWidth;
  final double gap;

  DottedLine({
    this.height = 1.0,
    this.color = Colors.black,
    this.strokeWidth = 1.0,
    this.gap = 3.0,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(double.infinity, height),
      painter: _DottedLinePainter(color, strokeWidth, gap),
    );
  }
}

class _DottedLinePainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double gap;

  _DottedLinePainter(this.color, this.strokeWidth, this.gap);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    double startX = 0.0;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0.0), Offset(startX + gap, 0.0), paint);
      startX += gap * 2;
    }
  }

  @override
  bool shouldRepaint(_DottedLinePainter oldDelegate) {
    return false;
  }
}
