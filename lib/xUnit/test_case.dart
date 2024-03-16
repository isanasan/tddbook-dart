import 'dart:mirrors';

import 'package:tddbook_dart/xUnit/test_result.dart';

class TestCase {
  String name;

  TestCase(this.name);

  void setUp() {}

  void tearDown() {}

  TestResult run() {
    TestResult result = TestResult();
    result.testStarted();
    setUp();
    var mirrror = reflect(this);
    var symbol = Symbol(name);
    mirrror.invoke(symbol, <dynamic>[]);
    tearDown();
    return result;
  }
}
