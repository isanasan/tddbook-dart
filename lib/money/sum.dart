import 'package:tddbook_dart/money/bank.dart';
import 'package:tddbook_dart/money/expression.dart';
import 'package:tddbook_dart/money/money.dart';

class Sum implements Expression {
  Expression augend;
  Expression addend;

  Sum(this.augend, this.addend);

  @override
  Money reduce(Bank bank, String to) {
    int amount =
        augend.reduce(bank, to).amount + addend.reduce(bank, to).amount;
    return Money(amount, to);
  }

  @override
  Expression plus(Expression addend) {
    return Money(0, "USD");
  }
}
