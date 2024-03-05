import 'package:tddbook_dart/money/bank.dart';
import 'package:tddbook_dart/money/money.dart';

abstract interface class Expression {
  Money reduce(Bank bank, String to);
  Expression plus(Expression addend);
  Expression times(int multiplier);
}
