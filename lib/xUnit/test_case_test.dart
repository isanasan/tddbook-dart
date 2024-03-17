import 'package:tddbook_dart/xUnit/test_case.dart';
import 'package:tddbook_dart/xUnit/test_result.dart';
import 'package:tddbook_dart/xUnit/test_suite.dart';
import 'package:tddbook_dart/xUnit/was_run.dart';

class TestCaseTest extends TestCase {
  TestCaseTest(String name) : super(name);

  void testTemplateMethod() {
    TestResult result = TestResult();
    WasRun test = WasRun("testMethod");
    test.run(result);
    assert("setUp testMethod tearDown " == test.log);
  }

  void testResult() {
    TestResult result = TestResult();
    WasRun test = WasRun("testMethod");
    test.run(result);
    assert("1 run, 0 failed" == result.summary());
  }

  void testFailedResult() {
    TestResult result = TestResult();
    WasRun test = WasRun("testBrokenMethod");
    test.run(result);
    assert("1 run, 1 failed" == result.summary());
  }

  void testFailedResultFormatting() {
    TestResult result = TestResult();
    result.testStarted();
    result.testFailed();
    assert("1 run, 1 failed" == result.summary());
  }

  void testSuite() {
    TestSuite suite = TestSuite();
    suite.add(WasRun("testMethod"));
    suite.add(WasRun("testBrokenMethod"));
    TestResult result = TestResult();
    suite.run(result);
    assert("2 run, 1 failed" == result.summary());
  }
}
