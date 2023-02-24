import 'package:flutter/material.dart';

class PainterCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var colors = Offset.zero & size;

    var pathCircle = Path();
    var paintCircle = Paint()
      ..color = const Color(0xff747a8a)
      ..shader = LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
          stops: const [
            0.0,
            0.3,
            1
          ],
          colors: [
            Colors.purpleAccent.withOpacity(0.6),
            Colors.yellowAccent.withOpacity(0.6),
            Colors.white24.withOpacity(0.1)
          ]).createShader(colors)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..isAntiAlias = true
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 0.5);

    pathCircle.moveTo(size.width * 0.5, 0);

    pathCircle.cubicTo(
        size.width * 0.07, size.height * 0.04,
        0, size.height * 0.38,
        0, size.height * 0.5);

    pathCircle.cubicTo(
        0, size.height * 0.65,
        size.width * 0.07, size.height * 0.97,
        size.width * 0.5, size.height);

    pathCircle.cubicTo(
        size.width * 0.93, size.height * 0.97,
        size.width, size.height * 0.62,
        size.width, size.height * 0.5);

    pathCircle.quadraticBezierTo(
        size.width * 0.97, size.height * 0.45,
        size.width * 0.94, size.height * 0.5);

    pathCircle.cubicTo(
        size.width * 0.94, size.height * 0.59,
        size.width * 0.9, size.height * 0.91,
        size.width * 0.5, size.height * 0.94);

    pathCircle.cubicTo(
        size.width * 0.1, size.height * 0.91,
        size.width * 0.06, size.height * 0.59,
        size.width * 0.06, size.height * 0.5);

    pathCircle.cubicTo(
        size.width * 0.06, size.height * 0.44,
        size.width * 0.1, size.height * 0.1,
        size.width * 0.5, size.height * 0.06);

    pathCircle.quadraticBezierTo(
        size.width * 0.55, size.height * 0.03,
        size.width * 0.5, 0);

    canvas.drawPath(pathCircle, paintCircle);

    var path = Path();
    var paint = Paint()
      ..color = Colors.white70
      ..shader = LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
          stops: const [
            0.0,
            0.3,
            1
          ],
          colors: [
            Colors.purpleAccent.withOpacity(0.4),
            Colors.yellowAccent.withOpacity(0.4),
            Colors.transparent
          ]).createShader(colors)
      ..style = PaintingStyle.fill
      ..strokeWidth = 3.0
      ..isAntiAlias = true;

    path.moveTo(size.width * 0.5, 0);

    path.cubicTo(
        size.width * 0.07, size.height * 0.04,
        0, size.height * 0.38,
        0, size.height * 0.5);

    path.cubicTo(
        0, size.height * 0.65,
        size.width * 0.07, size.height * 0.97,
        size.width * 0.5, size.height);

    path.cubicTo(
        size.width * 0.93, size.height * 0.97,
        size.width, size.height * 0.62,
        size.width, size.height * 0.5);

    path.quadraticBezierTo(
        size.width * 0.97, size.height * 0.45,
        size.width * 0.94, size.height * 0.5);

    path.cubicTo(
        size.width * 0.94, size.height * 0.59,
        size.width * 0.9, size.height * 0.91,
        size.width * 0.5, size.height * 0.94);

    path.cubicTo(
        size.width * 0.1, size.height * 0.91,
        size.width * 0.06, size.height * 0.59,
        size.width * 0.06, size.height * 0.5);

    path.cubicTo(
        size.width * 0.06, size.height * 0.44,
        size.width * 0.1, size.height * 0.1,
        size.width * 0.5, size.height * 0.06);

    path.quadraticBezierTo(
        size.width * 0.55, size.height * 0.03,
        size.width * 0.5, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
