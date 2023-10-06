class Franc {
  int amount;

  Franc(this.amount);

  Franc times(int multiplier) {
    return Franc(amount * multiplier);
  }

  bool equals(Object object) {
    Franc franc = object as Franc;
    return amount == franc.amount;
  }
}
