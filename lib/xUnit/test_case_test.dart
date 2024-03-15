import 'package:tddbook_dart/xUnit/test_case.dart';
import 'package:tddbook_dart/xUnit/was_run.dart';

class TestCaseTest extends TestCase {
  late WasRun test;
  TestCaseTest(String name) : super(name);

  @override
  void setUp() {
    test = WasRun("testMethod");
  }

  void testRunning() {
    test.run();
    assert(test.wasRun);
  }

  void testSetUp() {
    test.run();
    assert("setUp " == test.log);
  }
}
