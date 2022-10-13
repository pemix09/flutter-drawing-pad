import 'dart:ui';

import 'Figure.dart';

class Square extends Figure{
  double sideLength;

  Square(double this.sideLength, Offset startPos) : super(startPos);

}