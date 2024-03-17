import 'dart:mirrors';

import 'package:tddbook_dart/xUnit/test_result.dart';

class TestCase {
  String name;

  TestCase(this.name);

  void setUp() {}

  void tearDown() {}

  void run(TestResult result) {
    result.testStarted();
    setUp();
    var mirrror = reflect(this);
    try {
      var symbol = Symbol(name);
      mirrror.invoke(symbol, <dynamic>[]);
    } on Exception {
      result.testFailed();
    }
    tearDown();
  }
}
