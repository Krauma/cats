import 'package:flutter/material.dart';

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height);

    var firstQuadraticPoint = Offset(size.width * 0.25, size.height - 50.0);
    var firstQuadraticEndPoint = Offset(size.width * .5, size.height - 30.0);
    path.quadraticBezierTo(firstQuadraticPoint.dx, firstQuadraticPoint.dy,
        firstQuadraticEndPoint.dx, firstQuadraticEndPoint.dy);

    var secondQuadraticPoint = Offset(size.width * .75, size.height - 15);
    var secondQuadraticEndPoint = Offset(size.width, size.height - 80.0);
    path.quadraticBezierTo(secondQuadraticPoint.dx, secondQuadraticPoint.dy,
        secondQuadraticEndPoint.dx, secondQuadraticEndPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}
