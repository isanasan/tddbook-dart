import 'package:tddbook_dart/money/money.dart';
import 'package:test/test.dart';

void main() {
  test('Multiplication', () {
    Money five = Money.dollar(5);
    expect(Money.dollar(10).equals(five.times(2)), true);
    expect(Money.dollar(15).equals(five.times(3)), true);
  });

  test('Equality', () {
    expect(Money.dollar(5).equals(Money.dollar(5)), true);
    expect(Money.dollar(5).equals(Money.dollar(6)), false);
    expect(Money.franc(5).equals(Money.dollar(5)), false);
  });

  test('Currency', () {
    expect("USD", Money.dollar(1).currency);
    expect("CHF", Money.franc(1).currency);
  });
}
