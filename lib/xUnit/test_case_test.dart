import 'package:tddbook_dart/xUnit/test_case.dart';
import 'package:tddbook_dart/xUnit/was_run.dart';

class TestCaseTest extends TestCase {
  TestCaseTest(String name) : super(name);

  void testRunning() {
    WasRun test = WasRun("testMethod");
    assert(!test.wasRun);
    test.run();
    assert(test.wasRun);
  }

  void testSetUp() {
    WasRun test = WasRun("testMethod");
    test.run();
    assert(test.wasSetUp);
  }
}
