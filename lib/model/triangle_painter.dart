import 'package:flutter/cupertino.dart';

class TrianglePainter extends CustomPainter {
  final Color color;
  final String direction;

  TrianglePainter({required this.color, required this.direction});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = color;
    paint.style = PaintingStyle.fill;

    final path = Path();

// draw the triangle according to the direction
    switch (direction) {
      case 'top':
        path.moveTo(size.width / 2, 0); // top vertex
        path.lineTo(0, size.height); // left vertex
        path.lineTo(size.width, size.height); // right vertex
        break;
      case 'bottom':
        path.moveTo(size.width / 2, size.height); // bottom vertex
        path.lineTo(0, 0); // left vertex
        path.lineTo(size.width, 0); // right vertex
        break;
// you can add more cases for other directions
      default:
        break;
    }

    path.close(); // close the path

    canvas.drawPath(path, paint); // draw the path on the canvas
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}