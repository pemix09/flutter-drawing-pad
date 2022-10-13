import '../Models/Figure.dart';

class CanvasService{

  List<Figure> figures = <Figure>[];

  void AddFigure(Figure figure){
    figures.add(figure);
  }
}