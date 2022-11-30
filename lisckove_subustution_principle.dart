abstract class Shape {
  void area();
}

class Shape2 {
  num? length;
  num? breadth;
}

class Circle implements Shape {
  num? radius;
  @override
  area() {
    print("Area of Circle");
  }
}

class Square extends Shape2 {
  num? length;
  num? breadth;

  // get length => _length;
  // get breadth => _breadth;

  // void setLength(num value) {
  //   this._length = value;
  //   this._breadth = value;
  // }

  // void setBreadth(num value) {
  //   this._length = value;
  //   this._breadth = value;
  // }
}

class Rectangle extends Shape2 {
  num? length;
  num? breadth;

  // get length => _length;
  // get breadth => _breadth;

  // void setLength(num value) {
  //   this._length = value;
  // }

  // void setBreadth(num value) {
  //   this._breadth = value;
  // }
}

void main() {
  final rectangle = Rectangle();
  // rectangle.setLength(10);
  // rectangle.setBreadth(20);
  rectangle.length = 10;
  rectangle.breadth = 20;
  print("Length and Breadth is ${rectangle.length!},${rectangle.breadth!}");
  // final square = Square();
  // square.setLength(10);
  // print("Length and Breadth of square is ${square.length!},${square.breadth!}");
}
