import 'dart:mirrors';

class TestCase {
  String name;

  TestCase(this.name);

  void setUp() {}

  void tearDown() {}

  void run() {
    setUp();
    var mirrror = reflect(this);
    var symbol = Symbol(name);
    mirrror.invoke(symbol, <dynamic>[]);
    tearDown();
  }
}
