import 'package:tddbook_dart/money/bank.dart';
import 'package:tddbook_dart/money/expression.dart';
import 'package:tddbook_dart/money/money.dart';

class Sum implements Expression {
  Money augend;
  Money addend;

  Sum(this.augend, this.addend);

  @override
  Money reduce(Bank bank, String to) {
    int amount = augend.amount + addend.amount;
    return Money(amount, to);
  }
}
