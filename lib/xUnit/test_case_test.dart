import 'package:tddbook_dart/xUnit/test_case.dart';
import 'package:tddbook_dart/xUnit/was_run.dart';

class TestCaseTest extends TestCase {
  TestCaseTest(String name) : super(name);

  void testTemplateMethod() {
    WasRun test = WasRun("testMethod");
    test.run();
    assert("setUp testMethod tearDown " == test.log);
  }
}
