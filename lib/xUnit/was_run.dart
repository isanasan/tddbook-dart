import 'dart:mirrors';

import 'package:tddbook_dart/xUnit/test_case.dart';

class WasRun extends TestCase {
  bool wasRun = false;

  WasRun(name) : super(name);

  void run() {
    var mirrror = reflect(this);
    var symbol = Symbol(name);
    mirrror.invoke(symbol, <dynamic>[]);
  }

  void testMethod() {
    wasRun = true;
  }
}
