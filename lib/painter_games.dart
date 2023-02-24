import 'package:flutter/material.dart';

class PainterGames extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var colors = Offset.zero & size;

    var pathBox = Path();
    var paintBox = Paint()
      ..color = Colors.transparent
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.5
      ..isAntiAlias = true
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 0.5);

    pathBox.moveTo(0, size.height * 0.52);

    pathBox.lineTo(0, size.height * 0.9);

    pathBox.cubicTo(
        0, size.height,
        size.width * 0.07, size.height,
        size.width * 0.1, size.height);

    pathBox.lineTo(size.width * 0.9, size.height);

    pathBox.cubicTo(
        size.width * 0.93, size.height,
        size.width, size.height,
        size.width, size.height * 0.9);

    pathBox.lineTo(size.width, size.height * 0.1);

    pathBox.cubicTo(
        size.width, 0,
        size.width * 0.93, 0,
        size.width * 0.9, 0);

    pathBox.lineTo(size.width * 0.5, 0);

    pathBox.cubicTo(
        size.width * 0.365, 0,
        size.width * 0.365, size.height * 0.1,
        size.width * 0.365, size.height * 0.1);

    pathBox.cubicTo(
        size.width * 0.35, size.height * 0.15,
        size.width * 0.35, size.height * 0.4,
        size.width * 0.1, size.height * 0.43);

    pathBox.cubicTo(
        size.width * 0.01, size.height * 0.44,
        size.width * 0.01, size.height * 0.47,
        0, size.height * 0.52);

    canvas.drawPath(pathBox, paintBox);

    var path = Path();
    var paint = Paint()
      ..color = Colors.white
      ..shader = LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          stops: const [
            0.0,
            0.15,
            0.4,
            0.8
          ],
          colors: [
            Color(0xff3d3054).withOpacity(0.7),
            Color(0xffe0609f).withOpacity(0.7),
            Color(0xff4cadb4).withOpacity(0.7),
            Colors.teal.withOpacity(0.5)
          ]).createShader(colors)
      ..style = PaintingStyle.fill
      ..strokeWidth = 3.0
      ..isAntiAlias = true;

    path.moveTo(0, size.height * 0.52);

    path.lineTo(0, size.height * 0.9);

    path.cubicTo(
        0, size.height,
        size.width * 0.07, size.height,
        size.width * 0.1, size.height);

    path.lineTo(size.width * 0.9, size.height);

    path.cubicTo(
        size.width * 0.93, size.height,
        size.width, size.height,
        size.width, size.height * 0.9);

    path.lineTo(size.width, size.height * 0.1);

    path.cubicTo(
        size.width, 0,
        size.width * 0.93, 0,
        size.width * 0.9, 0);

    path.lineTo(size.width * 0.5, 0);

    path.cubicTo(
        size.width * 0.365, 0,
        size.width * 0.365, size.height * 0.1,
        size.width * 0.365, size.height * 0.1);

    path.cubicTo(
        size.width * 0.35, size.height * 0.15,
        size.width * 0.35, size.height * 0.4,
        size.width * 0.1, size.height * 0.43);

    path.cubicTo(
        size.width * 0.01, size.height * 0.44,
        size.width * 0.01, size.height * 0.47,
        0, size.height * 0.52);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
