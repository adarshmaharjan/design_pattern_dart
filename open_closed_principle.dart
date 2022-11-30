class OrderCalculator {
  num? totalAmount;
  num? taxPercentage;
  num? tip;
  num? shipping;

  void calculateOrder() {
    final orderValue =
        totalAmount! + (totalAmount! * taxPercentage!) + tip! + shipping!;
    print('Order value is $orderValue');
    EmailOrder.sendEmail();
  }
}

class EmailOrder {
  static final email = "adarsh@gmail.com";
  static void sendEmail() {
    print('Sending email to $email');
  }
}

abstract class Shape {
  void area();
}

class Circle implements Shape {
  num? radius;
  @override
  area() {
    print("Area of Circle");
  }
}

class Square implements Shape {
  num? length;
  @override
  area() {
    print("Area of Square");
  }
}

class Rectangle implements Shape {
  num? length;
  num? breadth;
  @override
  area() {
    print("Area of Rectangle");
  }
}

class AreaCalculator {
  Shape shape;
  AreaCalculator({required this.shape});

  calculate() {
    shape.area();
  }
}

void main() {
  // final orderCalculator = OrderCalculator();
  // orderCalculator.totalAmount = 1000;
  // orderCalculator.taxPercentage = 0.2;
  // orderCalculator.tip = 100;
  // orderCalculator.shipping = 50;
  // orderCalculator.calculateOrder();

  // *for area class
  final square = Square();
  square.length = 10;
  final areaCalculator = AreaCalculator(shape: square);
  areaCalculator.calculate();
}
