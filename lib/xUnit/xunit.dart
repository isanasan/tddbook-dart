import 'package:tddbook_dart/xUnit/test_case_test.dart';

void main() {
  print(TestCaseTest("testTemplateMethod").run().summary());
  print(TestCaseTest("testResult").run().summary());
  print(TestCaseTest("testFailedResult").run().summary());
  print(TestCaseTest("testFailedResultFormatting").run().summary());
}
