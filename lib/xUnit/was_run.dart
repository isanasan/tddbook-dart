import 'package:tddbook_dart/xUnit/test_case.dart';

class WasRun extends TestCase {
  bool wasRun = false;
  bool wasSetUp = false;

  WasRun(name) : super(name);

  void testMethod() {
    wasRun = true;
  }

  void setUp() {
    wasSetUp = true;
  }
}
