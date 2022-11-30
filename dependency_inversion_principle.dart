class Service {
  ConnectionInterface? connection;

  void attach() {
    connection!.connect();
  }
}

abstract class ConnectionInterface {
  void connect();
}

class MyDBConnection implements ConnectionInterface {
  @override
  void connect() {}
}

class FireBaseDBConnection implements ConnectionInterface {
  @override
  void connect() {}
}

void main() {
  final service = Service();
  service.connection = FireBaseDBConnection();
  service.attach();
}
