import 'package:tddbook_dart/money/money.dart';
import 'package:tddbook_dart/money/expression.dart';
import 'package:tddbook_dart/money/bank.dart';
import 'package:tddbook_dart/money/sum.dart';
import 'package:test/test.dart';

void main() {
  test('Multiplication', () {
    Money five = Money.dollar(5);
    expect(Money.dollar(10), five.times(2));
    expect(Money.dollar(15), five.times(3));
  });

  test('Equality', () {
    expect(Money.dollar(5), Money.dollar(5));
    expect(Money.dollar(5) == Money.dollar(6), false);
    expect(Money.franc(5) == Money.dollar(5), false);
  });

  test('Currency', () {
    expect("USD", Money.dollar(1).currency);
    expect("CHF", Money.franc(1).currency);
  });

  test('simple addition', () {
    Money five = Money.dollar(5);
    Expression sum = five.plus(five);
    Bank bank = Bank();
    Money reduced = bank.reduce(sum, "USD");
    expect(Money.dollar(10), reduced);
  });

  test('plus returns sum', () {
    Money five = Money.dollar(5);
    Expression result = five.plus(five);
    Sum sum = result as Sum;
    expect(five, sum.augend);
    expect(five, sum.addend);
  });

  test('reduce sum', () {
    Expression sum = Sum(Money.dollar(3), Money.dollar(4));
    Bank bank = Bank();
    Money result = bank.reduce(sum, "USD");
    expect(result, Money.dollar(7));
  });

  test('reduce money', () {
    Bank bank = Bank();
    Money result = bank.reduce(Money.dollar(1), "USD");
    expect(result, Money.dollar(1));
  });

  test('reduce money different currency', () {
    Bank bank = Bank();
    bank.addRate("CHF", "USD", 2);
    Money result = bank.reduce(Money.franc(2), "USD");
    expect(result, Money.dollar(1));
  });

  test('mixed addition', () {
    Expression fiveBucks = Money.dollar(5);
    Expression tenFranc = Money.franc(10);

    Bank bank = Bank();
    bank.addRate("CHF", "USD", 2);
    Money result = bank.reduce(fiveBucks.plus(tenFranc), "USD");
    expect(result.amount, Money.dollar(10).amount);
  });

  test('sum plus money', () {
    Expression fiveBucks = Money.dollar(5);
    Expression tenFranc = Money.franc(10);
    Bank bank = Bank();
    bank.addRate("CHF", "USD", 2);
    Expression sum = Sum(fiveBucks, tenFranc).plus(fiveBucks);
    Money result = bank.reduce(sum, "USD");
    expect(result.amount, Money.dollar(15).amount);
  });

  test('sum times', () {
    Expression fiveBucks = Money.dollar(5);
    Expression tenFranc = Money.franc(10);
    Bank bank = Bank();
    bank.addRate("CHF", "USD", 2);
    Expression sum = Sum(fiveBucks, tenFranc).times(2);
    Money result = bank.reduce(sum, "USD");
    expect(result.amount, Money.dollar(20).amount);
  });
}
