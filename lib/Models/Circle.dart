import 'dart:ui';

import 'Figure.dart';

class Circle extends Figure{
  double radius;
  Circle(double this.radius, Offset startPos) : super(startPos){
  }
}