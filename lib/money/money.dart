class Money {
  int amount = 0;

  Money(this.amount);

  bool equals(Object object) {
    Money money = object as Money;
    return amount == money.amount;
  }
}
