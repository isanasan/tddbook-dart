import 'dart:mirrors';

class TestCase {
  String name;

  TestCase(this.name);

  void run() {
    var mirrror = reflect(this);
    var symbol = Symbol(name);
    mirrror.invoke(symbol, <dynamic>[]);
  }
}
