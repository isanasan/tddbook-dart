import 'package:tddbook_dart/xUnit/was_run.dart';

void main() {
  WasRun test = WasRun("testMethod");
  print(test.wasRun);
  test.testMethod();
  print(test.wasRun);
}
