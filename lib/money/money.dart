import 'package:tddbook_dart/money/expression.dart';
import 'package:tddbook_dart/money/sum.dart';

class Money implements Expression {
  int amount = 0;
  final String currency;

  Money(this.amount, this.currency);

  Money times(int multiplier) {
    return Money(amount * multiplier, currency);
  }

  Expression plus(Money addend) {
    return Sum(this, addend);
  }

  bool equals(Object object) {
    Money money = object as Money;
    return amount == money.amount && currency == money.currency;
  }

  @override
  Money reduce(String to) {
    return this;
  }

  static Money dollar(int amount) {
    return Money(amount, "USD");
  }

  static Money franc(int amount) {
    return Money(amount, "CHF");
  }
}
