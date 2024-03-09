class WasRun {
  String name;
  bool wasRun = false;

  WasRun(this.name);

  void testMethod() {
    wasRun = true;
  }
}
