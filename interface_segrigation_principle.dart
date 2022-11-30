abstract class Mammal {
  void eat();
  void see();
}

abstract class FlyInterface {
  void fly();
}

class Bird implements Mammal, FlyInterface {
  @override
  void eat() {
    print("Bird is eating");
  }

  @override
  void fly() {
    print("Bird is flying");
  }

  @override
  void see() {
    print("Bird is seeing");
  }
}

class Dog extends Mammal {
  @override
  void eat() {
    print("Dog is eating");
  }

  @override
  void see() {
    print("Dog is seeing");
  }
}

void main() {}
