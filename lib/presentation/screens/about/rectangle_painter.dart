import 'package:flutter/cupertino.dart';

class RectanglePainter extends CustomPainter {
  final Color color;

  RectanglePainter({
    super.repaint,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    //path.addRect(Rect.fromLTRB(0, 0, 900, 800));
    path.lineTo(1028, 0);
    path.lineTo(828, 800);
    path.lineTo(0, 800);
    path.close();
    canvas.drawPath(path, Paint()..color = color);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
