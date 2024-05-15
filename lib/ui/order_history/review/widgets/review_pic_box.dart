import 'package:flutter/material.dart';

class ReviewPicBox extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    const double dashWidth = 5;
    const double dashSpace = 5;

    // 사각형의 경계선을 그립니다.
    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.width, size.height),
      paint,
    );

    // 위쪽 가로선을 그립니다.
    double currentX = 0;
    while (currentX < size.width) {
      canvas.drawLine(
        Offset(currentX, 0),
        Offset(currentX + dashWidth, 0),
        paint,
      );
      currentX += dashWidth + dashSpace;
    }

    // 아래쪽 가로선을 그립니다.
    currentX = 0;
    while (currentX < size.width) {
      canvas.drawLine(
        Offset(currentX, size.height),
        Offset(currentX + dashWidth, size.height),
        paint,
      );
      currentX += dashWidth + dashSpace;
    }

    // 왼쪽 세로선을 그립니다.
    double currentY = 0;
    while (currentY < size.height) {
      canvas.drawLine(
        Offset(0, currentY),
        Offset(0, currentY + dashWidth),
        paint,
      );
      currentY += dashWidth + dashSpace;
    }

    // 오른쪽 세로선을 그립니다.
    currentY = 0;
    while (currentY < size.height) {
      canvas.drawLine(
        Offset(size.width, currentY),
        Offset(size.width, currentY + dashWidth),
        paint,
      );
      currentY += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class DottedRect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(200, 100), // 사각형의 너비와 높이를 설정합니다.
      painter: ReviewPicBox(),
    );
  }
}
