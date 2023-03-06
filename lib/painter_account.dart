import 'package:flutter/material.dart';

class PainterAccount extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var colors = Offset.zero & size;

    var pathBox = Path();
    var paintBox = Paint()
      ..color = Colors.grey
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.5
      ..isAntiAlias = true
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 0.5);

    pathBox.moveTo(0, size.height * 0.75);

    pathBox.lineTo(0, size.height * 0.80);

    pathBox.cubicTo(0, size.height, size.width * 0.07, size.height,
        size.width * 0.1, size.height);

    pathBox.lineTo(size.width * 0.9, size.height);

    pathBox.cubicTo(size.width * 0.93, size.height, size.width, size.height,
        size.width, size.height * 0.8);

    pathBox.lineTo(size.width, size.height * 0.2);

    pathBox.cubicTo(size.width, 0, size.width * 0.93, 0, size.width * 0.9, 0);

    pathBox.lineTo(size.width * 0.32, 0);

    pathBox.cubicTo(size.width * 0.25, 0, size.width * 0.25, size.height * 0.22,
        size.width * 0.245, size.height * 0.254);

    pathBox.cubicTo(size.width * 0.241, size.height * 0.254, size.width * 0.27,
        size.height * 0.81, size.width * 0.09, size.height * 0.81);

    pathBox.cubicTo(size.width * 0.03, size.height * 0.78, size.width * 0.03,
        size.height * 0.7, size.width * 0.045, size.height * 0.77);

    pathBox.cubicTo(size.width * 0.01, size.height * 0.67, size.width * 0.01,
        size.height * 0.7, 0, size.height * 0.75);

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
            const Color(0xff3d3054).withOpacity(0.7),
            const Color(0xffe0609f).withOpacity(0.65),
            Colors.blueGrey.withOpacity(0.7),
            Colors.black26.withOpacity(0.7)
          ]).createShader(colors)
      ..style = PaintingStyle.fill
      ..strokeWidth = 3.0
      ..isAntiAlias = true;

    path.moveTo(0, size.height * 0.75);

    path.lineTo(0, size.height * 0.80);

    path.cubicTo(0, size.height, size.width * 0.07, size.height,
        size.width * 0.1, size.height);

    path.lineTo(size.width * 0.9, size.height);

    path.cubicTo(size.width * 0.93, size.height, size.width, size.height,
        size.width, size.height * 0.8);

    path.lineTo(size.width, size.height * 0.2);

    path.cubicTo(size.width, 0, size.width * 0.93, 0, size.width * 0.9, 0);

    path.lineTo(size.width * 0.32, 0);

    path.cubicTo(size.width * 0.25, 0, size.width * 0.25, size.height * 0.22,
        size.width * 0.245, size.height * 0.254);

    path.cubicTo(size.width * 0.241, size.height * 0.254, size.width * 0.27,
        size.height * 0.81, size.width * 0.09, size.height * 0.81);

    path.cubicTo(size.width * 0.03, size.height * 0.78, size.width * 0.03,
        size.height * 0.7, size.width * 0.045, size.height * 0.77);

    path.cubicTo(size.width * 0.01, size.height * 0.67, size.width * 0.01,
        size.height * 0.7, 0, size.height * 0.75);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
