import 'package:tddbook_dart/money.dart';
import 'package:tddbook_dart/franc.dart';
import 'package:test/test.dart';

void main() {
  test('Multiplication', () {
    var five = Dollar(5);
    expect(Dollar(10).equals(five.times(2)), true);
    expect(Dollar(15).equals(five.times(3)), true);
  });

  test('Equality', () {
    expect(Dollar(5).equals(Dollar(5)), true);
    expect(Dollar(5).equals(Dollar(6)), false);
  });

  test('Franc Multiplication', () {
    var five = Franc(5);
    expect(Franc(10).equals(five.times(2)), true);
    expect(Franc(15).equals(five.times(3)), true);
  });
}
