import 'package:tddbook_dart/money.dart';
import 'package:test/test.dart';

void main() {
  test('Multiplication', () {
    var five = Dollar(5);
    five.times(2);
    expect(five.amount, 10);
  });
}
