import 'package:tddbook_dart/xUnit/test_case.dart';
import 'package:tddbook_dart/xUnit/test_result.dart';

class TestSuite {
  var tests = <TestCase>[];

  void add(TestCase test) {
    tests.add(test);
  }

  void run(TestResult result) {
    for (var test in tests) {
      test.run(result);
    }
  }
}
