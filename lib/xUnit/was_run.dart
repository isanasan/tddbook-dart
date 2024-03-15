import 'package:tddbook_dart/xUnit/test_case.dart';

class WasRun extends TestCase {
  late bool wasRun;
  bool wasSetUp = false;
  late String log;

  WasRun(name) : super(name);

  void testMethod() {
    wasRun = true;
  }

  @override
  void setUp() {
    wasRun = false;
    wasSetUp = true;
    log = "setUp ";
  }
}
