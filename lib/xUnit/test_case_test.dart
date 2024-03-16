import 'package:tddbook_dart/xUnit/test_case.dart';
import 'package:tddbook_dart/xUnit/test_result.dart';
import 'package:tddbook_dart/xUnit/was_run.dart';

class TestCaseTest extends TestCase {
  TestCaseTest(String name) : super(name);

  void testTemplateMethod() {
    WasRun test = WasRun("testMethod");
    test.run();
    assert("setUp testMethod tearDown " == test.log);
  }

  void testResult() {
    WasRun test = WasRun("testMethod");
    TestResult result = test.run();
    assert("1 run, 0 failed" == result.summary());
  }

  void testFailedResult() {
    WasRun test = WasRun("testBrokenMethod");
    TestResult result = test.run();
    assert("1 run, 1 failed" == result.summary());
  }

  void testFailedResultFormatting() {
    TestResult result = TestResult();
    result.testStarted();
    result.testFailed();
    assert("1 run, 1 failed" == result.summary());
  }
}
