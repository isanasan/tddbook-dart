class TestResult {
  int runCount = 0;

  void testStarted() {
    runCount++;
  }

  String summary() {
    return "$runCount run, 0 failed";
  }
}
