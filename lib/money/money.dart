import 'package:tddbook_dart/money/dollar.dart';
import 'package:tddbook_dart/money/franc.dart';

abstract class Money {
  int amount = 0;

  Money(this.amount);

  Money times(int multiplier);

  bool equals(Object object) {
    Money money = object as Money;
    return amount == money.amount && runtimeType == money.runtimeType;
  }

  static Money dollar(int amount) {
    return Dollar(amount);
  }

  static Money franc(int amount) {
    return Franc(amount);
  }
}
