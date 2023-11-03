import 'package:tddbook_dart/money/expression.dart';
import 'package:tddbook_dart/money/money.dart';

class Bank {
  Money reduce(Expression source, String to) {
    return source.reduce(this, to);
  }

  void addRate(String from, String to, int rate) {}

  int rate(String from, String to) {
    return (from == "CHF" && to == "USD") ? 2 : 1;
  }
}
