// inheritance ===> is a relationship
class Person {}

class Adarsh extends Person {}

// composition ==> has a relationship
abstract class ConnectionInterface {}

class Service {
  ConnectionInterface connection;
  Service({required this.connection});
}

// dependency
class TaxRegion {}

class Order {
  calculate(TaxRegion texRegion) {}
}
