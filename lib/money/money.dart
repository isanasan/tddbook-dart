import 'package:tddbook_dart/money/bank.dart';
import 'package:tddbook_dart/money/expression.dart';
import 'package:tddbook_dart/money/sum.dart';

class Money implements Expression {
  int amount = 0;
  final String currency;

  Money(this.amount, this.currency);

  Expression times(int multiplier) {
    return Money(amount * multiplier, currency);
  }

  @override
  Expression plus(Expression addend) {
    return Sum(this, addend);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is Money) {
      return currency == other.currency && amount == other.amount;
    } else {
      return false;
    }
  }

  @override
  int get hashCode => amount.hashCode;

  @override
  Money reduce(Bank bank, String to) {
    int rate = bank.rate(currency, to);
    return Money(amount ~/ rate, to);
  }

  static Money dollar(int amount) {
    return Money(amount, "USD");
  }

  static Money franc(int amount) {
    return Money(amount, "CHF");
  }
}
