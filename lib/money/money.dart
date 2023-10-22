class Money {
  int amount = 0;
  final String currency;

  Money(this.amount, this.currency);

  Money times(int multiplier) {
    return Money(amount * multiplier, currency);
  }

  bool equals(Object object) {
    Money money = object as Money;
    return amount == money.amount && currency == money.currency;
  }

  static Money dollar(int amount) {
    return Money(amount, "USD");
  }

  static Money franc(int amount) {
    return Money(amount, "CHF");
  }
}
