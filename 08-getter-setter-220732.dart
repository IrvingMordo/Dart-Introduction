main() {
  //Test
  final squareOne = Square(side: 4);
  print(squareOne);
  print("The area of the square is: ${squareOne.calculateArea}");
  print("--------------------------------------------------"); 

  //Test two
  squareOne.side = 5.0;
  print(squareOne);
  print("The area of the square is: ${squareOne.calculateArea}");
  print("--------------------------------------------------");

  //Test three
  //squaretwo.side = 0;
  //print(squaretwo);
  //print("The area of the square is: ${squaretwo.calculateArea}");
  //print("--------------------------------------------------");
}

class Square {
  double _side;
  Square({required double side})
    : assert(side > 0, "The size of the side must be > 0 "),
      _side = side;

  double get calculateArea {
    return _side * _side;
  }

  set side(double value) {
    print("Assigning a new value to the side size...");
    if (value <= 0) throw "The value must be > 0";
    _side = value;
  }
}
