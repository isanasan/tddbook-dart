class WasRun {
  String name;
  bool wasRun = false;

  WasRun(this.name);

  void run() {
    testMethod();
  }

  void testMethod() {
    wasRun = true;
  }
}
