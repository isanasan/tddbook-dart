import 'package:tddbook_dart/xUnit/test_case.dart';

class WasRun extends TestCase {
  bool wasSetUp = false;
  late String log;

  WasRun(name) : super(name);

  void testMethod() {
    log = "${log}testMethod ";
  }

  @override
  void setUp() {
    wasSetUp = true;
    log = "setUp ";
  }

  @override
  void tearDown() {
    log = "${log}tearDown ";
  }
}
