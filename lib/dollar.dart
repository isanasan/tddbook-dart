class Dollar {
  int amount;

  Dollar(this.amount);

  Dollar times(int multiplier) {
    return Dollar(amount * multiplier);
  }

  bool equals(Object object) {
    Dollar dollar = object as Dollar;
    return amount == dollar.amount;
  }
}
