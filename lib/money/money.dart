import 'package:tddbook_dart/money/dollar.dart';
import 'package:tddbook_dart/money/franc.dart';

class Money {
  int amount = 0;
  final String currency;

  Money(this.amount, this.currency);

  Money times(int multiplier) {
    return Money(amount * multiplier, currency);
  }

  bool equals(Object object) {
    Money money = object as Money;
    return amount == money.amount && runtimeType == money.runtimeType;
  }

  static Money dollar(int amount) {
    return Dollar(amount, "USD");
  }

  static Money franc(int amount) {
    return Franc(amount, "CHF");
  }
}
