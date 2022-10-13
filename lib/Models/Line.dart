import 'dart:ui';

import 'Figure.dart';

class Line extends Figure{
  Offset endPos;

  Line(Offset startPos, Offset this.endPos):super(startPos);
}