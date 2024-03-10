import 'dart:mirrors';

class WasRun {
  String name;
  bool wasRun = false;

  WasRun(this.name);

  void run() {
    var mirrror = reflect(this);
    var symbol = Symbol(name);
    mirrror.invoke(symbol, <dynamic>[]);
  }

  void testMethod() {
    wasRun = true;
  }
}
