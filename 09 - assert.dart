void main(){
  
  final square = Square(
    side: -5
  );
    
  print( square.calculateArea() );
  
  square.side = -1;
  
  print( square.area );
}

class Square {
  double _side; // side * side
  
  Square({
    required double side,
  })
    : assert(side > 0, 'Side value must be greater than 0'),
      _side = side;
  
  double get area {
    return _side * _side;
  }
  
  set side(double side) {
    
    if(side <= 0){
      throw 'Side value must be greater than 0';
    }
    _side = side;
  }
  
  double calculateArea(){
    return _side * _side;
  }
}