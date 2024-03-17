import 'package:tddbook_dart/xUnit/test_case_test.dart';
import 'package:tddbook_dart/xUnit/test_result.dart';
import 'package:tddbook_dart/xUnit/test_suite.dart';

void main() {
  TestSuite suite = TestSuite();
  suite.add(TestCaseTest("testTemplateMethod"));
  suite.add(TestCaseTest("testResult"));
  suite.add(TestCaseTest("testFailedResult"));
  suite.add(TestCaseTest("testFailedResultFormatting"));
  suite.add(TestCaseTest("testSuite"));
  TestResult result = TestResult();
  suite.run(result);
  print(result.summary());
}
