class TestResult {
  int runCount = 0;
  int errorCount = 0;

  void testStarted() {
    runCount++;
  }

  void testFailed() {
    errorCount++;
  }

  String summary() {
    return "$runCount run, $errorCount failed";
  }
}
